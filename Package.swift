// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "MPVKit",
    platforms: [.macOS(.v12), .iOS(.v15), .tvOS(.v15), .visionOS(.v1)],
    products: [
        .library(
            name: "MPVKit",
            targets: ["_MPVKit"]
        ),
        .library(
            name: "MPVKit-GPL",
            targets: ["_MPVKit-GPL"]
        ),
    ],
    targets: [
        .target(
            name: "_MPVKit",
            dependencies: [
                "Libmpv", "_FFmpeg", "Libuchardet", "Libbluray",
                .target(name: "Libluajit", condition: .when(platforms: [.macOS])),
            ],
            path: "Sources/_MPVKit",
            linkerSettings: [
                .linkedFramework("AVFoundation"),
                .linkedFramework("CoreAudio"),
            ]
        ),
        .target(
            name: "_FFmpeg",
            dependencies: [
                "Libavcodec", "Libavdevice", "Libavfilter", "Libavformat", "Libavutil", "Libswresample", "Libswscale",
                "Libssl", "Libcrypto", "Libass", "Libfreetype", "Libfribidi", "Libharfbuzz",
                "MoltenVK", "Libshaderc_combined", "lcms2", "Libplacebo", "Libdovi", "Libunibreak",
                "gmp", "nettle", "hogweed", "gnutls", "Libdav1d", "Libuavs3d"
            ],
            path: "Sources/_FFmpeg",
            linkerSettings: [
                .linkedFramework("AudioToolbox"),
                .linkedFramework("CoreVideo"),
                .linkedFramework("CoreFoundation"),
                .linkedFramework("CoreMedia"),
                .linkedFramework("Metal"),
                .linkedFramework("VideoToolbox"),
                .linkedLibrary("bz2"),
                .linkedLibrary("iconv"),
                .linkedLibrary("expat"),
                .linkedLibrary("resolv"),
                .linkedLibrary("xml2"),
                .linkedLibrary("z"),
                .linkedLibrary("c++"),
            ]
        ),
        .target(
            name: "_MPVKit-GPL",
            dependencies: [
                "Libmpv-GPL", "_FFmpeg-GPL", "Libuchardet", "Libbluray",
                .target(name: "Libluajit", condition: .when(platforms: [.macOS])),
            ],
            path: "Sources/_MPVKit-GPL",
            linkerSettings: [
                .linkedFramework("AVFoundation"),
                .linkedFramework("CoreAudio"),
            ]
        ),
        .target(
            name: "_FFmpeg-GPL",
            dependencies: [
                "Libavcodec-GPL", "Libavdevice-GPL", "Libavfilter-GPL", "Libavformat-GPL", "Libavutil-GPL", "Libswresample-GPL", "Libswscale-GPL",
                "Libssl", "Libcrypto", "Libass", "Libfreetype", "Libfribidi", "Libharfbuzz",
                "MoltenVK", "Libshaderc_combined", "lcms2", "Libplacebo", "Libdovi", "Libunibreak",
                "Libsmbclient", "gmp", "nettle", "hogweed", "gnutls", "Libdav1d", "Libuavs3d"
            ],
            path: "Sources/_FFmpeg-GPL",
            linkerSettings: [
                .linkedFramework("AudioToolbox"),
                .linkedFramework("CoreVideo"),
                .linkedFramework("CoreFoundation"),
                .linkedFramework("CoreMedia"),
                .linkedFramework("Metal"),
                .linkedFramework("VideoToolbox"),
                .linkedLibrary("bz2"),
                .linkedLibrary("iconv"),
                .linkedLibrary("expat"),
                .linkedLibrary("resolv"),
                .linkedLibrary("xml2"),
                .linkedLibrary("z"),
                .linkedLibrary("c++"),
            ]
        ),

        .binaryTarget(
            name: "Libmpv-GPL",
            url: "https://github.com/mpvkit/MPVKit/releases/download/1.0.0/Libmpv-GPL.xcframework.zip",
            checksum: "45989efd473c9a2295a3d1d0da0bcd004d14f0eeea81bda671be89c78f3925ff"
        ),
        .binaryTarget(
            name: "Libavcodec-GPL",
            url: "https://github.com/mpvkit/MPVKit/releases/download/1.0.0/Libavcodec-GPL.xcframework.zip",
            checksum: "8df07384ace5bd48520669db89203e51cc13ce99a6d0bef975a83a45e5ea5855"
        ),
        .binaryTarget(
            name: "Libavdevice-GPL",
            url: "https://github.com/mpvkit/MPVKit/releases/download/1.0.0/Libavdevice-GPL.xcframework.zip",
            checksum: "14f3bfc950548eeb0d0686f9ddc2fb7ea120def036767c1490d2731df6e91f65"
        ),
        .binaryTarget(
            name: "Libavformat-GPL",
            url: "https://github.com/mpvkit/MPVKit/releases/download/1.0.0/Libavformat-GPL.xcframework.zip",
            checksum: "90281cdac29184fb618dc8ab6e091faa05b471efbd0b9a1c1a67c235b6961483"
        ),
        .binaryTarget(
            name: "Libavfilter-GPL",
            url: "https://github.com/mpvkit/MPVKit/releases/download/1.0.0/Libavfilter-GPL.xcframework.zip",
            checksum: "f9789661088275acac3d84e545beb5def04407418b73283994b6863c4db1582e"
        ),
        .binaryTarget(
            name: "Libavutil-GPL",
            url: "https://github.com/mpvkit/MPVKit/releases/download/1.0.0/Libavutil-GPL.xcframework.zip",
            checksum: "32849241cf71e949b4718dfdb1b69ece0f1ca9cb9d89b84a35051686b6bafbd0"
        ),
        .binaryTarget(
            name: "Libswresample-GPL",
            url: "https://github.com/mpvkit/MPVKit/releases/download/1.0.0/Libswresample-GPL.xcframework.zip",
            checksum: "f59191f210476e24a53a18a3b55158b82c5f685d19f2fb29582d95f5c3dff4eb"
        ),
        .binaryTarget(
            name: "Libswscale-GPL",
            url: "https://github.com/mpvkit/MPVKit/releases/download/1.0.0/Libswscale-GPL.xcframework.zip",
            checksum: "1eb1cc2d67e933837be7e5937e440b6dcf0000fd799b96e212dd2c14c5fe2d62"
        ),
        //AUTO_GENERATE_TARGETS_BEGIN//

        .binaryTarget(
            name: "Libcrypto",
            url: "https://github.com/mpvkit/openssl-build/releases/download/3.3.5/Libcrypto.xcframework.zip",
            checksum: "593283be2a90f7fd66f6e6ed331b2f099cf403e0926fe3b4ac09a7062b793965"
        ),
        .binaryTarget(
            name: "Libssl",
            url: "https://github.com/mpvkit/openssl-build/releases/download/3.3.5/Libssl.xcframework.zip",
            checksum: "ff5ffd43d015d7285fd37e4a3145b25cbd8d2842740bd629a711c299a20e226a"
        ),

        .binaryTarget(
            name: "gmp",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.11/gmp.xcframework.zip",
            checksum: "ad33c7a08f4cdcb9924c8f0e6d9a054dad33d7794b97667bf8b6fb2b236ae585"
        ),

        .binaryTarget(
            name: "nettle",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.11/nettle.xcframework.zip",
            checksum: "0fdf3ebf8bd7b8bc8eee837cf27261cb4c52ae520b6576a2f468656aa1691e02"
        ),
        .binaryTarget(
            name: "hogweed",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.11/hogweed.xcframework.zip",
            checksum: "25727c9fa67287fa0a4f4722f88bb8be669b23cd7e837e2d00870eb8a25d3f27"
        ),

        .binaryTarget(
            name: "gnutls",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.11/gnutls.xcframework.zip",
            checksum: "3dbec5809339189bf9679e218c6cff387ebf8fb72745927835afc2678f5c9f4d"
        ),

        .binaryTarget(
            name: "Libunibreak",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.5/Libunibreak.xcframework.zip",
            checksum: "940d9833cf4477d0a260d9f2b4066125bc0ff7bbc111ac3c90e774765b77a559"
        ),

        .binaryTarget(
            name: "Libfreetype",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.5/Libfreetype.xcframework.zip",
            checksum: "496ca62488530e14b1e4624d20ee2b237c0bd675cd70c19da578a5768302d02d"
        ),

        .binaryTarget(
            name: "Libfribidi",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.5/Libfribidi.xcframework.zip",
            checksum: "bc15e097b892f2f90424e4a27ba287070cc2f98a74a4da10e6d2481d15cf5ff9"
        ),

        .binaryTarget(
            name: "Libharfbuzz",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.5/Libharfbuzz.xcframework.zip",
            checksum: "aa8e0b9ca0387dac74e3e93c86e34d11982bb013b28022d0e6966a8427a35b2e"
        ),

        .binaryTarget(
            name: "Libass",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.5/Libass.xcframework.zip",
            checksum: "3f4c576d2818ceb4544aa2a20e1f55846511c5e706fd19adc3ea9fd842270498"
        ),

        .binaryTarget(
            name: "Libsmbclient",
            url: "https://github.com/mpvkit/libsmbclient-build/releases/download/4.15.13-2512/Libsmbclient.xcframework.zip",
            checksum: "3a53375fab11bc888cc553664ea5dd902208d04f0cc21ec746302bf356246b6f"
        ),

        .binaryTarget(
            name: "Libbluray",
            url: "https://github.com/mpvkit/libbluray-build/releases/download/1.4.0/Libbluray.xcframework.zip",
            checksum: "bc037d34e2b0b5ab7f202fb371f5fb298136cc66fdf406c2172185d06f53f18d"
        ),

        .binaryTarget(
            name: "Libuavs3d",
            url: "https://github.com/mpvkit/libuavs3d-build/releases/download/1.2.1-fix/Libuavs3d.xcframework.zip",
            checksum: "bd5256081486d16c51c868d755bf70266c424b54c895269580de44ec6707f789"
        ),

        .binaryTarget(
            name: "Libdovi",
            url: "https://github.com/mpvkit/libdovi-build/releases/download/3.3.2/Libdovi.xcframework.zip",
            checksum: "e693e239808350868e79c5448ef9f02e2716bc822dd8632a41a368a1eae5ca7d"
        ),

        .binaryTarget(
            name: "MoltenVK",
            url: "https://github.com/mpvkit/moltenvk-build/releases/download/1.4.2/MoltenVK.xcframework.zip",
            checksum: "aee189c54ad7c62bf734a3dc51eb4cfad5685d1d63b0ec519ecd1b437c332418"
        ),

        .binaryTarget(
            name: "Libshaderc_combined",
            url: "https://github.com/mpvkit/libshaderc-build/releases/download/2025.5.0/Libshaderc_combined.xcframework.zip",
            checksum: "758047b615708575b580eb960a2d083f760a29dc462d6eaa360416c946ce433b"
        ),

        .binaryTarget(
            name: "lcms2",
            url: "https://github.com/mpvkit/lcms2-build/releases/download/2.17.0/lcms2.xcframework.zip",
            checksum: "dc0dce0606f6ab6841a8ec5a6bd4448e2f3ef00661a050460f806c9393dc6982"
        ),

        .binaryTarget(
            name: "Libplacebo",
            url: "https://github.com/mpvkit/libplacebo-build/releases/download/7.360.1/Libplacebo.xcframework.zip",
            checksum: "2fa3d54cb81f302d6f11c7b2f509af30944381c3b11ee9d35096eb4637a6e2dd"
        ),

        .binaryTarget(
            name: "Libdav1d",
            url: "https://github.com/mpvkit/libdav1d-build/releases/download/1.5.3/Libdav1d.xcframework.zip",
            checksum: "d1a32ae6a1f0193e9f05c44c9176844af7f6d2a58cb33843f6f1b8dfd9224083"
        ),

        .binaryTarget(
            name: "Libavcodec",
            url: "https://github.com/DreadPirateBill/MPVKit/releases/download/1.0.2/Libavcodec.xcframework.zip",
            checksum: "7f4bec110bfdfa45b58b8a8fd431b826d8f0b0513f3925a4a516bfbc30fabf90"
        ),
        .binaryTarget(
            name: "Libavdevice",
            url: "https://github.com/DreadPirateBill/MPVKit/releases/download/1.0.2/Libavdevice.xcframework.zip",
            checksum: "343a65e49a4a36ffe3423168ac4b83345aca31812fdcafb999602100c839c3ba"
        ),
        .binaryTarget(
            name: "Libavformat",
            url: "https://github.com/DreadPirateBill/MPVKit/releases/download/1.0.2/Libavformat.xcframework.zip",
            checksum: "5426827f040e4fc3627f9fda5a85dc7965b5ec6f655a8b903725be5e9682c8bc"
        ),
        .binaryTarget(
            name: "Libavfilter",
            url: "https://github.com/DreadPirateBill/MPVKit/releases/download/1.0.2/Libavfilter.xcframework.zip",
            checksum: "c311843fba151dbc9815506014e58d1d74c856a9106370168bd9777cccf9f3b9"
        ),
        .binaryTarget(
            name: "Libavutil",
            url: "https://github.com/DreadPirateBill/MPVKit/releases/download/1.0.2/Libavutil.xcframework.zip",
            checksum: "573af24781f7cbdf9af4f8f6db9be0665ccfe67953280420af2a855446aae854"
        ),
        .binaryTarget(
            name: "Libswresample",
            url: "https://github.com/DreadPirateBill/MPVKit/releases/download/1.0.2/Libswresample.xcframework.zip",
            checksum: "1273279ef98b26c509a4b7557f79b722ce29ccbeddcab1f0a0da506ad61c4e29"
        ),
        .binaryTarget(
            name: "Libswscale",
            url: "https://github.com/DreadPirateBill/MPVKit/releases/download/1.0.2/Libswscale.xcframework.zip",
            checksum: "fc9f15a06d56f470d40f91dddc3afff6bae995a5d4ddc6023b4a2b738dc4129b"
        ),

        .binaryTarget(
            name: "Libuchardet",
            url: "https://github.com/mpvkit/libuchardet-build/releases/download/0.0.8/Libuchardet.xcframework.zip",
            checksum: "ea4f548a230a755e059144657cc9e2ff563c1cdeae03974c38f8b6e1a40303fb"
        ),

        .binaryTarget(
            name: "Libluajit",
            url: "https://github.com/mpvkit/libluajit-build/releases/download/2.1.0-fix/Libluajit.xcframework.zip",
            checksum: "3a171ef1627fb88260893dc452f989bd93dd8510814771ba3aff7753470d3f3e"
        ),

        .binaryTarget(
            name: "Libmpv",
            url: "https://github.com/DreadPirateBill/MPVKit/releases/download/1.0.2/Libmpv.xcframework.zip",
            checksum: "5c5e32a765a2c8e66186381924995e05e41e0baa7e44b3d804cf7f36cd44ac3c"
        ),
        //AUTO_GENERATE_TARGETS_END//
    ]
)
