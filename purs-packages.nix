{ pkgs ? import <nixpkgs> {} }:

{
  "abides" = {
    name = "abides";
    version = "v0.0.1";
    src = pkgs.fetchgit {
      url = "https://github.com/athanclark/purescript-abides.git";
      rev = "v0.0.1";
      sha256 = "1zhq9srrdr645q5cgdbglp6y2d9mkn6zci8qhcyxh5drf1ardy7d";
    };
  };
  "aff" = {
    name = "aff";
    version = "v5.1.2";
    src = pkgs.fetchgit {
      url = "https://github.com/slamdata/purescript-aff.git";
      rev = "v5.1.2";
      sha256 = "1ygjxbm2bqw82sm17szhzz4jihvbg9mszx1ii0n3sj72bnz02avz";
    };
  };
  "aff-bus" = {
    name = "aff-bus";
    version = "v4.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/slamdata/purescript-aff-bus.git";
      rev = "v4.0.0";
      sha256 = "17y6gcd8y6sibfkdijl9w0g4vwia0b005nc8jbyhp4svgszcv11x";
    };
  };
  "aff-coroutines" = {
    name = "aff-coroutines";
    version = "v7.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript-contrib/purescript-aff-coroutines.git";
      rev = "v7.0.0";
      sha256 = "1cbly4m2na5kf3halj68rjy5khydb71gzz0ry323z5h1i0fna2g9";
    };
  };
  "aff-promise" = {
    name = "aff-promise";
    version = "v2.1.0";
    src = pkgs.fetchgit {
      url = "https://github.com/nwolverson/purescript-aff-promise.git";
      rev = "v2.1.0";
      sha256 = "0khm53lvxgvc7fbsvcr2h2wlhcgay8vq45755f0w8vpk1441dvww";
    };
  };
  "aff-retry" = {
    name = "aff-retry";
    version = "v1.2.1";
    src = pkgs.fetchgit {
      url = "https://github.com/Unisay/purescript-aff-retry.git";
      rev = "v1.2.1";
      sha256 = "08651ly153ywzviab0ipd0zrhwdr8nz4xfym45dlpbgabgrh8pra";
    };
  };
  "affjax" = {
    name = "affjax";
    version = "v10.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/slamdata/purescript-affjax.git";
      rev = "v10.0.0";
      sha256 = "0n01xpc60xqd1gjxdh6jxbvc0m4i6h95j6dkayncbck5zrgnm2d7";
    };
  };
  "ansi" = {
    name = "ansi";
    version = "v5.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/hdgarrood/purescript-ansi.git";
      rev = "v5.0.0";
      sha256 = "16kgy9zbdms9appd69gad2bka44ijkcnc9p0kf5g7x672jypx3ar";
    };
  };
  "argonaut" = {
    name = "argonaut";
    version = "v6.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript-contrib/purescript-argonaut.git";
      rev = "v6.0.0";
      sha256 = "0b2jy5sf2lnn1r4kxnnm2vsr5iqkfas0jqp9yrrjmg7qngkd6qkw";
    };
  };
  "argonaut-codecs" = {
    name = "argonaut-codecs";
    version = "v6.1.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript-contrib/purescript-argonaut-codecs.git";
      rev = "v6.1.0";
      sha256 = "1zffaigvn0nv3l9z5aamyr9703bqag95dvap9dlsy44jplfc0vla";
    };
  };
  "argonaut-core" = {
    name = "argonaut-core";
    version = "v5.0.2";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript-contrib/purescript-argonaut-core.git";
      rev = "v5.0.2";
      sha256 = "1rfd1brvzp9akx6hypxql2qv9bhlcqks1xwqfqqf31dqvcl7vvhc";
    };
  };
  "argonaut-generic" = {
    name = "argonaut-generic";
    version = "v5.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript-contrib/purescript-argonaut-generic.git";
      rev = "v5.0.0";
      sha256 = "0lll7wkgf4xzsbaagxbcjpjh9y4vj0hfvcg94plsz3sda597a6nv";
    };
  };
  "argonaut-traversals" = {
    name = "argonaut-traversals";
    version = "v7.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript-contrib/purescript-argonaut-traversals.git";
      rev = "v7.0.0";
      sha256 = "0mr6c7c64c5b7ia0b68vsjyjxw06ac9908xpgxdd969kpvcwq9x3";
    };
  };
  "array-views" = {
    name = "array-views";
    version = "v0.0.2";
    src = pkgs.fetchgit {
      url = "https://github.com/klntsky/purescript-array-views.git";
      rev = "v0.0.2";
      sha256 = "0fzxcl4sjyx8vc2dq9cbmg9b2n04w9pns7p2b67z9hg44pj7f14b";
    };
  };
  "arraybuffer" = {
    name = "arraybuffer";
    version = "v10.0.2";
    src = pkgs.fetchgit {
      url = "https://github.com/jacereda/purescript-arraybuffer.git";
      rev = "v10.0.2";
      sha256 = "0vg1pfmjqnay5lkzaqqh4n75nf212fky9gpk0hjxzvb714yiibjk";
    };
  };
  "arraybuffer-class" = {
    name = "arraybuffer-class";
    version = "v0.2.5";
    src = pkgs.fetchgit {
      url = "https://github.com/athanclark/purescript-arraybuffer-class.git";
      rev = "v0.2.5";
      sha256 = "0kyn4kxlwqaisn026bs65rqn57gdqxbw1gfwxrsvybrh262w8wjr";
    };
  };
  "arraybuffer-types" = {
    name = "arraybuffer-types";
    version = "v2.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript-contrib/purescript-arraybuffer-types.git";
      rev = "v2.0.0";
      sha256 = "059a8n49yhl46l1b1j2qj4ichzq6dzj29ajkfvw88npzj5w2rshy";
    };
  };
  "arrays" = {
    name = "arrays";
    version = "v5.3.1";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript/purescript-arrays.git";
      rev = "v5.3.1";
      sha256 = "1z8i4mr30mjsvmw743g0m1yxfgqa9rhbgq7jq3955mg7j80j5r7w";
    };
  };
  "assert" = {
    name = "assert";
    version = "v4.1.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript/purescript-assert.git";
      rev = "v4.1.0";
      sha256 = "06l3ldmlmpz9pcpy8k578haa3pq67b733rvcpl5i3f69h6ymhz0n";
    };
  };
  "avar" = {
    name = "avar";
    version = "v3.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/slamdata/purescript-avar.git";
      rev = "v3.0.0";
      sha256 = "14g05jm2xricy5b9vn4k4lhc9lzi5jvpvv85h10s17kn4wwi9igk";
    };
  };
  "b64" = {
    name = "b64";
    version = "v0.0.6";
    src = pkgs.fetchgit {
      url = "https://github.com/menelaos/purescript-b64.git";
      rev = "v0.0.6";
      sha256 = "1rbp94k2010yxs9b5yglh101imlzrmxymm87zrxn2lw36bjxd62z";
    };
  };
  "basic-auth" = {
    name = "basic-auth";
    version = "v1.0.3";
    src = pkgs.fetchgit {
      url = "https://github.com/oreshinya/purescript-basic-auth.git";
      rev = "v1.0.3";
      sha256 = "1hfadj2py7a7aqcx810kdqys2j8269z0mn0ibs1hhlyllglw10xi";
    };
  };
  "behaviors" = {
    name = "behaviors";
    version = "v8.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/paf31/purescript-behaviors.git";
      rev = "v8.0.0";
      sha256 = "01dxhs5nl7n0w1ygdqaxpi9hxx9bakxm3vggjdfm0hmbhrf0q8my";
    };
  };
  "bifunctors" = {
    name = "bifunctors";
    version = "v4.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript/purescript-bifunctors.git";
      rev = "v4.0.0";
      sha256 = "1bdra5fbkraglqrrm484vw8h0wwk48kzkn586v4y7fg106q1q386";
    };
  };
  "bigints" = {
    name = "bigints";
    version = "v4.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/sharkdp/purescript-bigints.git";
      rev = "v4.0.0";
      sha256 = "1m9v4an4y55rhiknr2spyllf80chl61w2xzmg90p58f8q4mzih8r";
    };
  };
  "bip39" = {
    name = "bip39";
    version = "v1.0.1";
    src = pkgs.fetchgit {
      url = "https://github.com/athanclark/purescript-bip39.git";
      rev = "v1.0.1";
      sha256 = "0l8823ma9mhmn8a99f9s7xlnhccrxdpjlpg31vbai8749lyzy0yk";
    };
  };
  "biscotti-cookie" = {
    name = "biscotti-cookie";
    version = "v0.2.0";
    src = pkgs.fetchgit {
      url = "https://github.com/drewolson/purescript-biscotti-cookie.git";
      rev = "v0.2.0";
      sha256 = "09l6sndf21dwwy7wqdbnv8q91phps7kcippl7l9nshlgrihcpfi2";
    };
  };
  "biscotti-session" = {
    name = "biscotti-session";
    version = "v0.1.1";
    src = pkgs.fetchgit {
      url = "https://github.com/drewolson/purescript-biscotti-session.git";
      rev = "v0.1.1";
      sha256 = "1r24mpcj0wdc72l8jwr8cm1xv08zz51jb6d0yxpqfgfyszzwdwx9";
    };
  };
  "bower-json" = {
    name = "bower-json";
    version = "v1.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/klntsky/purescript-bower-json.git";
      rev = "v1.0.0";
      sha256 = "109g38z85539a34bm75cm0zbj2qcycf9ih4b5n66c8qa292ylqnm";
    };
  };
  "bucketchain" = {
    name = "bucketchain";
    version = "v0.3.0";
    src = pkgs.fetchgit {
      url = "https://github.com/Bucketchain/purescript-bucketchain.git";
      rev = "v0.3.0";
      sha256 = "0qmqc5rbck0m9yv15mqrz3yqbapd66cxp5xbpjfsb9cyar8bkpm9";
    };
  };
  "bucketchain-basic-auth" = {
    name = "bucketchain-basic-auth";
    version = "v0.2.0";
    src = pkgs.fetchgit {
      url = "https://github.com/Bucketchain/purescript-bucketchain-basic-auth.git";
      rev = "v0.2.0";
      sha256 = "0wc2bax820wpcp6rjjchyrgy6740jypa54yg4wnv0iwhwwfg1sws";
    };
  };
  "bucketchain-conditional" = {
    name = "bucketchain-conditional";
    version = "v0.2.0";
    src = pkgs.fetchgit {
      url = "https://github.com/Bucketchain/purescript-bucketchain-conditional.git";
      rev = "v0.2.0";
      sha256 = "0djvk4a1m5k7rvi8hkhmhxd552a26jc0h22w0sh3p9i0vxsnmv40";
    };
  };
  "bucketchain-cors" = {
    name = "bucketchain-cors";
    version = "v0.3.0";
    src = pkgs.fetchgit {
      url = "https://github.com/Bucketchain/purescript-bucketchain-cors.git";
      rev = "v0.3.0";
      sha256 = "15dczg6g9nd7d91qa92f6xbmkw4vyhbqa441d1hah01vdqs5nk7d";
    };
  };
  "bucketchain-csrf" = {
    name = "bucketchain-csrf";
    version = "v0.1.0";
    src = pkgs.fetchgit {
      url = "https://github.com/Bucketchain/purescript-bucketchain-csrf.git";
      rev = "v0.1.0";
      sha256 = "0czvbwy6w5n9h2vkwjwbgfl260kk5ibpiy8ssflzdf16m14v2440";
    };
  };
  "bucketchain-header-utils" = {
    name = "bucketchain-header-utils";
    version = "v0.3.0";
    src = pkgs.fetchgit {
      url = "https://github.com/Bucketchain/purescript-bucketchain-header-utils.git";
      rev = "v0.3.0";
      sha256 = "0wmz8kjkifvalidpzgcchwdpyawa39l24lkgmrdp7av935i3pv0x";
    };
  };
  "bucketchain-health" = {
    name = "bucketchain-health";
    version = "v0.2.0";
    src = pkgs.fetchgit {
      url = "https://github.com/Bucketchain/purescript-bucketchain-health.git";
      rev = "v0.2.0";
      sha256 = "1cils1kyhc81z3dpf0v5ykhhb4lxygj6rr3mja0w7qfj07qv0xm8";
    };
  };
  "bucketchain-history-api-fallback" = {
    name = "bucketchain-history-api-fallback";
    version = "v0.3.0";
    src = pkgs.fetchgit {
      url = "https://github.com/Bucketchain/purescript-bucketchain-history-api-fallback.git";
      rev = "v0.3.0";
      sha256 = "003ll15ijli5xfvxjh15xcki47d9aszfb1qizy8ab84a5h6add3d";
    };
  };
  "bucketchain-logger" = {
    name = "bucketchain-logger";
    version = "v0.3.0";
    src = pkgs.fetchgit {
      url = "https://github.com/Bucketchain/purescript-bucketchain-logger.git";
      rev = "v0.3.0";
      sha256 = "15i043yvwr0qinvvmi05xbi6ixpqjkj7z6x4zms881iihra4g8qa";
    };
  };
  "bucketchain-secure" = {
    name = "bucketchain-secure";
    version = "v0.1.0";
    src = pkgs.fetchgit {
      url = "https://github.com/Bucketchain/purescript-bucketchain-secure.git";
      rev = "v0.1.0";
      sha256 = "1c9vh4j91xscwq7ms4r2cygd4dp5vkjb8lrjmp79c8navx1myzrh";
    };
  };
  "bucketchain-simple-api" = {
    name = "bucketchain-simple-api";
    version = "v3.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/Bucketchain/purescript-bucketchain-simple-api.git";
      rev = "v3.0.0";
      sha256 = "1bn6kmcd0b11kr7knn55dgh6v7k931h0fz34vd623l6zf9s5sfdk";
    };
  };
  "bucketchain-sslify" = {
    name = "bucketchain-sslify";
    version = "v0.2.0";
    src = pkgs.fetchgit {
      url = "https://github.com/Bucketchain/purescript-bucketchain-sslify.git";
      rev = "v0.2.0";
      sha256 = "145dnylf976q9hz00xybvhdssanw6r9804sxz4mcsh7m4i0xznq1";
    };
  };
  "bucketchain-static" = {
    name = "bucketchain-static";
    version = "v0.3.0";
    src = pkgs.fetchgit {
      url = "https://github.com/Bucketchain/purescript-bucketchain-static.git";
      rev = "v0.3.0";
      sha256 = "1p5px861pih2hran7fddgrr062z2q0vfxvjvdis32gdk0qq1ggmb";
    };
  };
  "byte-codec" = {
    name = "byte-codec";
    version = "v0.0.1";
    src = pkgs.fetchgit {
      url = "https://github.com/athanclark/purescript-byte-codec.git";
      rev = "v0.0.1";
      sha256 = "1qwjjhb17b5hfyx83v9z0pzh24ic44xivmjipgfhd1q30ll1j86g";
    };
  };
  "bytestrings" = {
    name = "bytestrings";
    version = "v8.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/rightfold/purescript-bytestrings.git";
      rev = "v8.0.0";
      sha256 = "13biw9bcj9chnhirfjb3aldwzlv7gmil0ji0hhb257mhwlbiffk9";
    };
  };
  "call-by-name" = {
    name = "call-by-name";
    version = "v2.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/natefaubion/purescript-call-by-name.git";
      rev = "v2.0.0";
      sha256 = "0d2y49sngr2kivhyngjn8x47h23lri48jvriwjyj414sxzayxpdm";
    };
  };
  "canvas" = {
    name = "canvas";
    version = "v4.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript-web/purescript-canvas.git";
      rev = "v4.0.0";
      sha256 = "0m7a523hr6jn8wg3d1jck1s3bar81gq4ar8bq658sbsysh73n1py";
    };
  };
  "cartesian" = {
    name = "cartesian";
    version = "v1.0.4";
    src = pkgs.fetchgit {
      url = "https://github.com/Ebmtranceboy/purescript-cartesian.git";
      rev = "v1.0.4";
      sha256 = "1y0i9sq31xm86sydkh917fwp78pkmilmql7lfh08q3kva935dzzb";
    };
  };
  "catenable-lists" = {
    name = "catenable-lists";
    version = "v5.0.1";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript/purescript-catenable-lists.git";
      rev = "v5.0.1";
      sha256 = "0mbpb8xr9a7a4bvawhki7js5cbv7c0lv0vdwb6r8nmv6b61gzg27";
    };
  };
  "checked-exceptions" = {
    name = "checked-exceptions";
    version = "v3.1.0";
    src = pkgs.fetchgit {
      url = "https://github.com/natefaubion/purescript-checked-exceptions.git";
      rev = "v3.1.0";
      sha256 = "1kfyihhsaz8g03vzvyir89adyzlcw4m95fr3xsmia8sd1vsb8646";
    };
  };
  "cheerio" = {
    name = "cheerio";
    version = "v0.2.2";
    src = pkgs.fetchgit {
      url = "https://github.com/icyrockcom/purescript-cheerio.git";
      rev = "v0.2.2";
      sha256 = "171g88g7f7c3j8jw19ki9fsfb5l47sfq1lljivk0y1ga789gk7gz";
    };
  };
  "chirashi" = {
    name = "chirashi";
    version = "v1.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/justinwoo/purescript-chirashi.git";
      rev = "v1.0.0";
      sha256 = "1wjh6lxg36fws4qm4myfw6xsy2p1vj3sb03iin10dyaz48j88ldz";
    };
  };
  "choco-pie" = {
    name = "choco-pie";
    version = "v5.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/justinwoo/purescript-chocopie.git";
      rev = "v5.0.0";
      sha256 = "1q3xilbk8chsy3c07jal9j8nmcvmydk0kvdv9nrbffpxqc02n457";
    };
  };
  "codec" = {
    name = "codec";
    version = "v3.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/garyb/purescript-codec.git";
      rev = "v3.0.0";
      sha256 = "0jk0j4yss3d6scyb715p926ld8rmsfnv1h85zxpywv85xdingw9w";
    };
  };
  "codec-argonaut" = {
    name = "codec-argonaut";
    version = "v7.1.0";
    src = pkgs.fetchgit {
      url = "https://github.com/garyb/purescript-codec-argonaut.git";
      rev = "v7.1.0";
      sha256 = "13aqci36xgxbahgpcxf2hsq9nsp0ljjd7nkzvpwxhhvy4n8yk1kk";
    };
  };
  "colors" = {
    name = "colors";
    version = "v5.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/sharkdp/purescript-colors.git";
      rev = "v5.0.0";
      sha256 = "05bkfqllfpkh7nj0nzgd5p387hlpk0x35nam1i6xm3vzma9csj18";
    };
  };
  "concur-core" = {
    name = "concur-core";
    version = "v0.4.2";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript-concur/purescript-concur-core.git";
      rev = "v0.4.2";
      sha256 = "1ih2lkvald36vvq12m6qgy3biik9a2m64q4wl9x83g6nhs2mrhg4";
    };
  };
  "concur-react" = {
    name = "concur-react";
    version = "v0.4.2";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript-concur/purescript-concur-react.git";
      rev = "v0.4.2";
      sha256 = "05pz4sssb7aj890bdw18a74i9bdy9alfdix1wjhkf7dymbc5sgjx";
    };
  };
  "console" = {
    name = "console";
    version = "v4.4.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript/purescript-console.git";
      rev = "v4.4.0";
      sha256 = "1w9k2g242lvyv4npb5rqfbdq1ngh7s7v12zarxn8yxgq15palh3m";
    };
  };
  "const" = {
    name = "const";
    version = "v4.1.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript/purescript-const.git";
      rev = "v4.1.0";
      sha256 = "0qbd2aisax52yw6sybdhs7na943cbsd6mylhhgsamrf7hzh6v51p";
    };
  };
  "contravariant" = {
    name = "contravariant";
    version = "v4.0.1";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript/purescript-contravariant.git";
      rev = "v4.0.1";
      sha256 = "0dd17lwlybpz4i54cxnqdgy38rjlbw9p7bw1r43is6z3kdc8983a";
    };
  };
  "control" = {
    name = "control";
    version = "v4.2.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript/purescript-control.git";
      rev = "v4.2.0";
      sha256 = "1nm45khn2dvlyv059nzpz1w7d3nfsvq45hnb2qllrbzyv7rlxmi8";
    };
  };
  "coroutines" = {
    name = "coroutines";
    version = "v5.0.1";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript-contrib/purescript-coroutines.git";
      rev = "v5.0.1";
      sha256 = "1is83blf44sflhwsaixpd1irlm33fsd1p919gbcn79mmmwi4bxdl";
    };
  };
  "crypto" = {
    name = "crypto";
    version = "v2.0.1";
    src = pkgs.fetchgit {
      url = "https://github.com/oreshinya/purescript-crypto.git";
      rev = "v2.0.1";
      sha256 = "1cx2xjakgp3jlnqiqf9az3al0wbwazhf2zkzdngzx4lx60r9jxq9";
    };
  };
  "css" = {
    name = "css";
    version = "v4.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/slamdata/purescript-css.git";
      rev = "v4.0.0";
      sha256 = "0f6gib6rp20qz08vramw7k6kv2ck315lmshjpii8zmkjb5ya0w55";
    };
  };
  "cssom" = {
    name = "cssom";
    version = "v0.0.2";
    src = pkgs.fetchgit {
      url = "https://github.com/danieljharvey/purescript-cssom.git";
      rev = "v0.0.2";
      sha256 = "0nq1jzp6ljhqrfflbvm6yqfynlm0kcddmxygnw3vzbbq1x07gjxv";
    };
  };
  "data-algebrae" = {
    name = "data-algebrae";
    version = "v4.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/i-am-tom/purescript-data-algebrae.git";
      rev = "v4.0.0";
      sha256 = "0shjjfi7rr1snkvss1m9snm9hmb482sg1930f7r2j5vy5dzpw3bl";
    };
  };
  "datetime" = {
    name = "datetime";
    version = "v4.1.1";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript/purescript-datetime.git";
      rev = "v4.1.1";
      sha256 = "06ghfvbvd5sd0q014qi8j8glk2g2j9f8z8cwq2318kllp92gz07q";
    };
  };
  "debug" = {
    name = "debug";
    version = "v4.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/garyb/purescript-debug.git";
      rev = "v4.0.0";
      sha256 = "0gwjj80akys0h111i74n429fmny992gx0r4rk1n98gqlqm5cmi21";
    };
  };
  "decimals" = {
    name = "decimals";
    version = "v5.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/sharkdp/purescript-decimals.git";
      rev = "v5.0.0";
      sha256 = "1ad56xf8i7mwqlp718ik12dvc8aqwjxfpk7d8hdyjwzhf7b1ws2n";
    };
  };
  "distributive" = {
    name = "distributive";
    version = "v4.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript/purescript-distributive.git";
      rev = "v4.0.0";
      sha256 = "0zbn0yq1vv7fbbf1lncg80irz0vg7wnw9b9wrzxhdzpbkw4jinsl";
    };
  };
  "dom-filereader" = {
    name = "dom-filereader";
    version = "v5.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/nwolverson/purescript-dom-filereader.git";
      rev = "v5.0.0";
      sha256 = "0337r9qrnrgmfpssdvls5rz03y97kmxp2s8fr72i5hycih93yv74";
    };
  };
  "dom-indexed" = {
    name = "dom-indexed";
    version = "v7.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/slamdata/purescript-dom-indexed.git";
      rev = "v7.0.0";
      sha256 = "18is75gsiix9w3f3lkly15cvs7ma1qc13hhi6wkl8nsj2g9g55ld";
    };
  };
  "dotenv" = {
    name = "dotenv";
    version = "v1.1.0";
    src = pkgs.fetchgit {
      url = "https://github.com/nsaunders/purescript-dotenv.git";
      rev = "v1.1.0";
      sha256 = "08pqs054nmy5plp1ixvlsz5pbcbm4vzkdn6mb2llrg4hkizs5hsv";
    };
  };
  "drawing" = {
    name = "drawing";
    version = "v4.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/paf31/purescript-drawing.git";
      rev = "v4.0.0";
      sha256 = "1ad1f2c7rnhd25hidkbxxxm2mnc1sr3zsjzwivbynwv1fmyv54nz";
    };
  };
  "effect" = {
    name = "effect";
    version = "v2.0.1";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript/purescript-effect.git";
      rev = "v2.0.1";
      sha256 = "1vqw5wrdxzh1ww6z7271xr4kg4mx0r3k3mwg18dmgmzj11wbn2wh";
    };
  };
  "either" = {
    name = "either";
    version = "v4.1.1";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript/purescript-either.git";
      rev = "v4.1.1";
      sha256 = "12j7vvjly0bgxidxmb2pflx0zy7x425dnvxk2y1pm66n0hbsq7ns";
    };
  };
  "email-validate" = {
    name = "email-validate";
    version = "v5.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/cdepillabout/purescript-email-validate.git";
      rev = "v5.0.0";
      sha256 = "1c7zsc6zskpidps3w2rcaad25zr2kfyd41aznnwrhisdhd0b86fx";
    };
  };
  "encoding" = {
    name = "encoding";
    version = "v0.0.6";
    src = pkgs.fetchgit {
      url = "https://github.com/menelaos/purescript-encoding.git";
      rev = "v0.0.6";
      sha256 = "1ccmlnk9k1ba8h7izbp7lkm2kxk6rpq4r0zb2h1436qspwkg51w0";
    };
  };
  "enums" = {
    name = "enums";
    version = "v4.0.1";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript/purescript-enums.git";
      rev = "v4.0.1";
      sha256 = "0qq0pgmq497nfml0y8xb2qdpga5xqp9sqq4ilv1rpyhg1v7nzb6v";
    };
  };
  "errors" = {
    name = "errors";
    version = "v4.1.0";
    src = pkgs.fetchgit {
      url = "https://github.com/passy/purescript-errors.git";
      rev = "v4.1.0";
      sha256 = "09xph8rhd25l24az1bfyjkbrp0h7ymxm4b8kw180f8kn2qx6q99a";
    };
  };
  "event" = {
    name = "event";
    version = "v1.3.0";
    src = pkgs.fetchgit {
      url = "https://github.com/paf31/purescript-event.git";
      rev = "v1.3.0";
      sha256 = "0kqlywyzhlw108fq684zcq9bfj19jbwkajancm9w4bb3jd522ca8";
    };
  };
  "exceptions" = {
    name = "exceptions";
    version = "v4.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript/purescript-exceptions.git";
      rev = "v4.0.0";
      sha256 = "17s0rg9k4phivhx9j3l2vqqfdhk61gpj1xfqy8w6zj3rnxj0b2cv";
    };
  };
  "exists" = {
    name = "exists";
    version = "v4.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript/purescript-exists.git";
      rev = "v4.0.0";
      sha256 = "0bbdbw3jaqyi8dj2d52zvfgx4vl84d8cr6hp43vy8lfjfcbj0wlk";
    };
  };
  "exitcodes" = {
    name = "exitcodes";
    version = "v4.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/Risto-Stevcev/purescript-exitcodes.git";
      rev = "v4.0.0";
      sha256 = "16861bn1h6jz47i20sd2a0d3qdj52akkqpx43yllmsdggcawmjxc";
    };
  };
  "expect-inferred" = {
    name = "expect-inferred";
    version = "v2.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/justinwoo/purescript-expect-inferred.git";
      rev = "v2.0.0";
      sha256 = "0vb36hl2znvrhzs4jvcd7nvzk3wcpzalbxxpc0fl13m5ibbq9dah";
    };
  };
  "express" = {
    name = "express";
    version = "v0.8.0";
    src = pkgs.fetchgit {
      url = "https://github.com/nkly/purescript-express.git";
      rev = "v0.8.0";
      sha256 = "11xq614r6zfwb0prkwl4lsjbnn5szskbmzlncqi762dzrbm45w70";
    };
  };
  "filterable" = {
    name = "filterable";
    version = "v3.0.2";
    src = pkgs.fetchgit {
      url = "https://github.com/LiamGoodacre/purescript-filterable.git";
      rev = "v3.0.2";
      sha256 = "0pn66mrgrpnlpd1lmywj5f0hbm9mnyjahqj276vz5v2xzlr0q63g";
    };
  };
  "fixed-points" = {
    name = "fixed-points";
    version = "v5.1.0";
    src = pkgs.fetchgit {
      url = "https://github.com/slamdata/purescript-fixed-points.git";
      rev = "v5.1.0";
      sha256 = "14acfi7897z2vd8mq52h0gz8x31wyrvalb490rqjf4nyk73vhg36";
    };
  };
  "fixed-precision" = {
    name = "fixed-precision";
    version = "v4.3.1";
    src = pkgs.fetchgit {
      url = "https://github.com/lumihq/purescript-fixed-precision.git";
      rev = "v4.3.1";
      sha256 = "0n2wh6szhapn4mpv0pjqmj8ay23nps2nsswzfx2c73lf10s249bl";
    };
  };
  "flare" = {
    name = "flare";
    version = "v6.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/sharkdp/purescript-flare.git";
      rev = "v6.0.0";
      sha256 = "1ywyv722av7k4jbkdwp5nmrgkmbanag97wp5ckifcx9nydcyw12x";
    };
  };
  "float32" = {
    name = "float32";
    version = "v0.2.0";
    src = pkgs.fetchgit {
      url = "https://github.com/athanclark/purescript-float32.git";
      rev = "v0.2.0";
      sha256 = "1fksgb2h48rww1nvjgnz9rc6lzz3vlxnqwqa0x10bgaipyhyvghp";
    };
  };
  "flow-id" = {
    name = "flow-id";
    version = "v1.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/i-am-the-slime/purescript-flow-id.git";
      rev = "v1.0.0";
      sha256 = "0kj5pk9nvap7yp9v0z7apcj0cshc5i224ww7pibwfg44y471kxig";
    };
  };
  "foldable-traversable" = {
    name = "foldable-traversable";
    version = "v4.1.1";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript/purescript-foldable-traversable.git";
      rev = "v4.1.1";
      sha256 = "03x89xcmphckzjlp4chc7swrpw347ll5bvr2yp7x9v2jqw2jlyi1";
    };
  };
  "folds" = {
    name = "folds";
    version = "v5.2.0";
    src = pkgs.fetchgit {
      url = "https://github.com/paf31/purescript-folds.git";
      rev = "v5.2.0";
      sha256 = "0wlsx2xq65f7nlz21acm8b5sraxfbdqcdrnjms3m5mbpdsndyn5y";
    };
  };
  "foreign" = {
    name = "foreign";
    version = "v5.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript/purescript-foreign.git";
      rev = "v5.0.0";
      sha256 = "15mz2s4f8crkd721z4df2aag4s0wil6fs07cpcmi7dpnkn7a4nab";
    };
  };
  "foreign-generic" = {
    name = "foreign-generic";
    version = "v10.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/paf31/purescript-foreign-generic.git";
      rev = "v10.0.0";
      sha256 = "1assvgmnim908plv7wzz4mrvq3lh4ayimgz5xk5njyz8p6pzkyvl";
    };
  };
  "foreign-object" = {
    name = "foreign-object";
    version = "v2.0.3";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript/purescript-foreign-object.git";
      rev = "v2.0.3";
      sha256 = "07wiql59zfj901nk9526b6rykn9m24jjcs8v5dgxbr1c3hiab9n3";
    };
  };
  "fork" = {
    name = "fork";
    version = "v4.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/slamdata/purescript-fork.git";
      rev = "v4.0.0";
      sha256 = "1jygqzyci40c28gw2ygnx8v52hilhajj1bdpn7ndvss4i7yh1lcp";
    };
  };
  "form-urlencoded" = {
    name = "form-urlencoded";
    version = "v5.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript-contrib/purescript-form-urlencoded.git";
      rev = "v5.0.0";
      sha256 = "1kl937qxnbn9m1bn0ijpnfiizgpcvcrnzqcc1scwq2kxvxh8kqap";
    };
  };
  "format" = {
    name = "format";
    version = "v4.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/sharkdp/purescript-format.git";
      rev = "v4.0.0";
      sha256 = "19f9vylx9ybxrwdkm16sh2bzv9xwlmq5yddj52a0s7yi80pkgmn9";
    };
  };
  "format-nix" = {
    name = "format-nix";
    version = "v0.3.0";
    src = pkgs.fetchgit {
      url = "https://github.com/justinwoo/format-nix.git";
      rev = "v0.3.0";
      sha256 = "0s4q1lfm3sjcyrqcz28kpms23phi9h6sirkr8lgglsli33pfs5y9";
    };
  };
  "formatters" = {
    name = "formatters";
    version = "v4.0.1";
    src = pkgs.fetchgit {
      url = "https://github.com/slamdata/purescript-formatters.git";
      rev = "v4.0.1";
      sha256 = "1i9dnh7xr6wmmgaphy75m9jdrg3qbjm3ml5fwg4ihy87x9w1fv1l";
    };
  };
  "free" = {
    name = "free";
    version = "v5.2.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript/purescript-free.git";
      rev = "v5.2.0";
      sha256 = "1bwj0ay7q9lm4ir29jy549m05jvaqik1s615biv23y51ngx3fn49";
    };
  };
  "freeap" = {
    name = "freeap";
    version = "v5.0.1";
    src = pkgs.fetchgit {
      url = "https://github.com/ethul/purescript-freeap.git";
      rev = "v5.0.1";
      sha256 = "007840vpxa4gz0fvjbahyky2xzz625gzfaiy2wjpb50d9qacsr7y";
    };
  };
  "freedom" = {
    name = "freedom";
    version = "v2.1.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript-freedom/purescript-freedom.git";
      rev = "v2.1.0";
      sha256 = "1i23gyd7jjlla3hflp60r8xnfrspw0axkj52admfrpsj96g576j7";
    };
  };
  "freedom-now" = {
    name = "freedom-now";
    version = "v3.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript-freedom/purescript-freedom-now.git";
      rev = "v3.0.0";
      sha256 = "0cw2kv51ifwcqqhhdj6i6jwakr84g51jpf99cz4d33c2z9bax7cj";
    };
  };
  "freedom-portal" = {
    name = "freedom-portal";
    version = "v2.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript-freedom/purescript-freedom-portal.git";
      rev = "v2.0.0";
      sha256 = "0p9f1v12gk4daqi0yx3ymzgqppbba5nbdyxji0qga0pnjzz10swh";
    };
  };
  "freedom-router" = {
    name = "freedom-router";
    version = "v2.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript-freedom/purescript-freedom-router.git";
      rev = "v2.0.0";
      sha256 = "13l0d6dswpxwqdxn270bnaipkkf8gsipq7z6mdgpkhq52bzjp34k";
    };
  };
  "freedom-transition" = {
    name = "freedom-transition";
    version = "v2.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript-freedom/purescript-freedom-transition.git";
      rev = "v2.0.0";
      sha256 = "1l21fqpa318y2spphnm2nm2pma3545qdysyv98i705r97c9lfjcv";
    };
  };
  "freedom-virtualized" = {
    name = "freedom-virtualized";
    version = "v3.0.1";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript-freedom/purescript-freedom-virtualized.git";
      rev = "v3.0.1";
      sha256 = "1h7jipjdhs1j2zbgjiispxvkvj0vnbzqxmh7bp41b741i4xwm6fc";
    };
  };
  "freedom-window-resize" = {
    name = "freedom-window-resize";
    version = "v2.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript-freedom/purescript-freedom-window-resize.git";
      rev = "v2.0.0";
      sha256 = "1znbml509wbmjda40pz1sw02wq4jjjgivma7l83wajy22gsvzyp0";
    };
  };
  "freet" = {
    name = "freet";
    version = "v5.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript-contrib/purescript-freet.git";
      rev = "v5.0.0";
      sha256 = "0j8y47x672z8h809hxl1n502yj0y3yv8zsln8bk17rcz06x8frv9";
    };
  };
  "functions" = {
    name = "functions";
    version = "v4.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript/purescript-functions.git";
      rev = "v4.0.0";
      sha256 = "0675k5kxxwdvsjs6a3is8pwm3hmv0vbcza1b8ls10gymmfz3k3hj";
    };
  };
  "functors" = {
    name = "functors";
    version = "v3.1.1";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript/purescript-functors.git";
      rev = "v3.1.1";
      sha256 = "1cnn3zhk6qcyiwbbpvrdqgsbch4qihx2y9d6sv45bvd8kzrbd306";
    };
  };
  "fuzzy" = {
    name = "fuzzy";
    version = "v0.3.0";
    src = pkgs.fetchgit {
      url = "https://github.com/citizennet/purescript-fuzzy.git";
      rev = "v0.3.0";
      sha256 = "0mshyvcwm7jipqk33rhavz4yixsa4fr99iba1idbr3af45b4nnvw";
    };
  };
  "gen" = {
    name = "gen";
    version = "v2.1.1";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript/purescript-gen.git";
      rev = "v2.1.1";
      sha256 = "0pk68cn1s89hql30ydks9gh34gbxg391smi2albx3qvxnfkrpxca";
    };
  };
  "generics-rep" = {
    name = "generics-rep";
    version = "v6.1.1";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript/purescript-generics-rep.git";
      rev = "v6.1.1";
      sha256 = "15vchzbcvf6byks90q14lvcwb8hnxqzm2mrlxi7v1f7has4s74kn";
    };
  };
  "globals" = {
    name = "globals";
    version = "v4.1.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript/purescript-globals.git";
      rev = "v4.1.0";
      sha256 = "03h4npdbsjr1mkjasdi071l0cl7zdf3l76a8f0x4ghx47yvpgadn";
    };
  };
  "gomtang-basic" = {
    name = "gomtang-basic";
    version = "v0.2.0";
    src = pkgs.fetchgit {
      url = "https://github.com/justinwoo/purescript-gomtang-basic.git";
      rev = "v0.2.0";
      sha256 = "11zp6id0hrq9hmr0w395ldf403p6v6ldz0miisrxmdmpcrcm3j54";
    };
  };
  "group" = {
    name = "group";
    version = "v4.1.1";
    src = pkgs.fetchgit {
      url = "https://github.com/morganthomas/purescript-group.git";
      rev = "v4.1.1";
      sha256 = "1f0bzfn6vb9vgsynas2sq5a0vf34avjd934jymv0pf3w6rid8h0w";
    };
  };
  "halogen" = {
    name = "halogen";
    version = "v5.0.0-rc.9";
    src = pkgs.fetchgit {
      url = "https://github.com/slamdata/purescript-halogen.git";
      rev = "v5.0.0-rc.9";
      sha256 = "094f99qa4cymqdh1zww2qsrijplqfz2n7sa5rnbm8hxg8p235fbl";
    };
  };
  "halogen-bootstrap" = {
    name = "halogen-bootstrap";
    version = "v8.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/slamdata/purescript-halogen-bootstrap.git";
      rev = "v8.0.0";
      sha256 = "0cvhq977jd5zs1j6jy9x2cs8yl2mhwy2kmywpvnl5a0sypcza56x";
    };
  };
  "halogen-bootstrap4" = {
    name = "halogen-bootstrap4";
    version = "v0.1.4";
    src = pkgs.fetchgit {
      url = "https://github.com/mschristiansen/purescript-halogen-bootstrap4.git";
      rev = "v0.1.4";
      sha256 = "0gaf7n9mgr927xbr6ssbld11z6y30imnp6bnwvfmw9hshfcfn6ki";
    };
  };
  "halogen-css" = {
    name = "halogen-css";
    version = "v8.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/slamdata/purescript-halogen-css.git";
      rev = "v8.0.0";
      sha256 = "1a8sj8ydfnvj3vh2l3f0yyd69y7v4qki1a5m99n0v2aqc1y6nrzl";
    };
  };
  "halogen-formless" = {
    name = "halogen-formless";
    version = "v1.0.0-rc.2";
    src = pkgs.fetchgit {
      url = "https://github.com/thomashoneyman/purescript-halogen-formless.git";
      rev = "v1.0.0-rc.2";
      sha256 = "0wa40z4gwvm3x0ms9ql7zmgixnyhv3n5gcpab9fvzg6q6kiqxczs";
    };
  };
  "halogen-hooks" = {
    name = "halogen-hooks";
    version = "v0.4.1";
    src = pkgs.fetchgit {
      url = "https://github.com/thomashoneyman/purescript-halogen-hooks.git";
      rev = "v0.4.1";
      sha256 = "1lmi2pla7krbf379a2xsk0xq9zxsimwjsmhdwjiiw9l2bxb0r8wl";
    };
  };
  "halogen-hooks-extra" = {
    name = "halogen-hooks-extra";
    version = "v0.6.0";
    src = pkgs.fetchgit {
      url = "https://github.com/jordanmartinez/purescript-halogen-hooks-extra.git";
      rev = "v0.6.0";
      sha256 = "099mbglhbgp2slz1nbp6wq7i2j7ib5yi8wr1kjdachnzlhmyf4s0";
    };
  };
  "halogen-select" = {
    name = "halogen-select";
    version = "v5.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/citizennet/purescript-halogen-select.git";
      rev = "v5.0.0";
      sha256 = "1vxkaf8sn8bmvj8gxmglwsp9vn2nxnxn9w0iv6w226pmfkjrdzyw";
    };
  };
  "halogen-storybook" = {
    name = "halogen-storybook";
    version = "v1.0.0-rc.1";
    src = pkgs.fetchgit {
      url = "https://github.com/rnons/purescript-halogen-storybook.git";
      rev = "v1.0.0-rc.1";
      sha256 = "1iax9qa0c6smw79iyzcydszkznv6jizp3f9x9zfywp64s6c7k25a";
    };
  };
  "halogen-vdom" = {
    name = "halogen-vdom";
    version = "v6.1.3";
    src = pkgs.fetchgit {
      url = "https://github.com/slamdata/purescript-halogen-vdom.git";
      rev = "v6.1.3";
      sha256 = "0apcdf7hhph57bnqw7nn0wyrlas8lv4nsvf964a3phhy06x1jw8m";
    };
  };
  "heterogeneous" = {
    name = "heterogeneous";
    version = "v0.4.1";
    src = pkgs.fetchgit {
      url = "https://github.com/natefaubion/purescript-heterogeneous.git";
      rev = "v0.4.1";
      sha256 = "0kbp6k6nbqwyzf12lrgf1v18ln5rakmxzb8s2dha1lfnk1r2f92m";
    };
  };
  "higher-order" = {
    name = "higher-order";
    version = "v0.2.0";
    src = pkgs.fetchgit {
      url = "https://github.com/matthew-hilty/purescript-higher-order.git";
      rev = "v0.2.0";
      sha256 = "13942zcicfm23yhbh2wjqy2d9k1v0bskvr1ci6b2ly0f3v6crh1x";
    };
  };
  "html-parser-halogen" = {
    name = "html-parser-halogen";
    version = "v1.0.0-rc.2";
    src = pkgs.fetchgit {
      url = "https://github.com/rnons/purescript-html-parser-halogen.git";
      rev = "v1.0.0-rc.2";
      sha256 = "02fmd62ynwrnmxzlz2fvj0plrv34cl5ls4lcddz2123qks6d7fjg";
    };
  };
  "http-methods" = {
    name = "http-methods";
    version = "v4.0.2";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript-contrib/purescript-http-methods.git";
      rev = "v4.0.2";
      sha256 = "1wfgrlnl33bcqw54hbc8icah2fi0rvi5zxhz07665vy9p5ppvkqs";
    };
  };
  "httpure" = {
    name = "httpure";
    version = "v0.10.0";
    src = pkgs.fetchgit {
      url = "https://github.com/cprussin/purescript-httpure.git";
      rev = "v0.10.0";
      sha256 = "1690abxprc1ynpr0gz53z32qg8qm70h4x719va6jx8iry67y2dn0";
    };
  };
  "httpure-contrib-biscotti" = {
    name = "httpure-contrib-biscotti";
    version = "v0.1.1";
    src = pkgs.fetchgit {
      url = "https://github.com/drewolson/purescript-httpure-contrib-biscotti.git";
      rev = "v0.1.1";
      sha256 = "1a20xvqxssckgrk5w59nlqyyj7ymh5m0121nqxf1y4mj0ijisqbj";
    };
  };
  "hyper" = {
    name = "hyper";
    version = "v0.11.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript-hyper/hyper.git";
      rev = "v0.11.0";
      sha256 = "1qrjqcxdzn8724pc6qqjplw6777h78miaymmyml3iiacp2sws1fp";
    };
  };
  "hypertrout" = {
    name = "hypertrout";
    version = "v0.11.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript-hyper/purescript-hypertrout.git";
      rev = "v0.11.0";
      sha256 = "09h521g9nf7zlvfvbzyy590vv0zzwh3cbwmdc5cdy2n8q6s20mx7";
    };
  };
  "identity" = {
    name = "identity";
    version = "v4.1.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript/purescript-identity.git";
      rev = "v4.1.0";
      sha256 = "1scdgbfkphfmapw7p9rnsiynpmqzyvnal2glzj450q51f8g1dhld";
    };
  };
  "identy" = {
    name = "identy";
    version = "v2.1.0";
    src = pkgs.fetchgit {
      url = "https://github.com/oreshinya/purescript-identy.git";
      rev = "v2.1.0";
      sha256 = "00yhn1b1xs86xznm9s0072y4vq7b15zvcy61ncl4c1dw2calq9xz";
    };
  };
  "indexed-monad" = {
    name = "indexed-monad";
    version = "v1.2.0";
    src = pkgs.fetchgit {
      url = "https://github.com/garyb/purescript-indexed-monad.git";
      rev = "v1.2.0";
      sha256 = "05qdzxh771jda3m88rk0z1y8i8pawcj0y91d7h820g2y5iwb8ixj";
    };
  };
  "inflection" = {
    name = "inflection";
    version = "v1.0.1";
    src = pkgs.fetchgit {
      url = "https://github.com/athanclark/purescript-inflection.git";
      rev = "v1.0.1";
      sha256 = "17hcfldr5gpryb3acxbwzcspp6ry43s41cqvm9w4wr1fsak21m4y";
    };
  };
  "int-53" = {
    name = "int-53";
    version = "v4.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/rgrempel/purescript-int-53.git";
      rev = "v4.0.0";
      sha256 = "097igbprf796f05a0zvzf6w179j8x9z1dfx8vp7r49slabiiccy5";
    };
  };
  "integers" = {
    name = "integers";
    version = "v4.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript/purescript-integers.git";
      rev = "v4.0.0";
      sha256 = "17d4bfpnrmbxlc7hhhrvnli70ydaqyr26zgvc9q52a76zgdcb4cf";
    };
  };
  "interpolate" = {
    name = "interpolate";
    version = "v2.0.1";
    src = pkgs.fetchgit {
      url = "https://github.com/jordanmartinez/purescript-interpolate.git";
      rev = "v2.0.1";
      sha256 = "0c7lf5mgjq641sdb1srpd3qrnqb4sh88dc0xl0gd6znp1xwpa36k";
    };
  };
  "invariant" = {
    name = "invariant";
    version = "v4.1.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript/purescript-invariant.git";
      rev = "v4.1.0";
      sha256 = "1fimpbh3yb7clvqxcdf4yf9im64z0v2s9pbspfacgq5b4vshjas9";
    };
  };
  "jajanmen" = {
    name = "jajanmen";
    version = "v1.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/justinwoo/purescript-jajanmen.git";
      rev = "v1.0.0";
      sha256 = "0qzim7arpdz0byvg3s4bj1ybrf1svi1z5x9kpai2a7l5y6adg8hz";
    };
  };
  "jquery" = {
    name = "jquery";
    version = "v5.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript-contrib/purescript-jquery.git";
      rev = "v5.0.0";
      sha256 = "0nbsjggnd4hy0pd7sr0slm4mvdqvzvn47lrg8vwhcq29nb3l7w7v";
    };
  };
  "js-date" = {
    name = "js-date";
    version = "v6.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript-contrib/purescript-js-date.git";
      rev = "v6.0.0";
      sha256 = "19qyzbr4a1ca8znbd8gcbz0a801f5p1v238ky3408gdx4ba32zjd";
    };
  };
  "js-timers" = {
    name = "js-timers";
    version = "v4.0.1";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript-contrib/purescript-js-timers.git";
      rev = "v4.0.1";
      sha256 = "1a8092sli7zqw1wflibhjza1ww21dxl7x7r602iazzwh2g70v4dg";
    };
  };
  "json-pointer" = {
    name = "json-pointer";
    version = "v1.1.0";
    src = pkgs.fetchgit {
      url = "https://github.com/reactormonk/purescript-json-pointer.git";
      rev = "v1.1.0";
      sha256 = "1ahwvs8lcj7cwy4g4lb6bv73njqbxnm2ccn72s7ff43295l7vvss";
    };
  };
  "json-schema" = {
    name = "json-schema";
    version = "v0.0.1";
    src = pkgs.fetchgit {
      url = "https://github.com/felixmulder/purescript-json-schema.git";
      rev = "v0.0.1";
      sha256 = "09ha1q62lvr45nnck9mfidlwcwrsm0iwpgxdqnirfyc9lvv80m10";
    };
  };
  "jwt" = {
    name = "jwt";
    version = "v0.0.7";
    src = pkgs.fetchgit {
      url = "https://github.com/menelaos/purescript-jwt.git";
      rev = "v0.0.7";
      sha256 = "17m1l009cqrk9n5payqa2cip7bhkd8r3qgvy9fpjyc8yf1ayccwf";
    };
  };
  "kancho" = {
    name = "kancho";
    version = "v2.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/justinwoo/purescript-kancho.git";
      rev = "v2.0.0";
      sha256 = "0ylf15vy7xmdag77nzcgv1y768fvcx8sw8j69rzkb4dnfrrmms1h";
    };
  };
  "kishimen" = {
    name = "kishimen";
    version = "v1.0.1";
    src = pkgs.fetchgit {
      url = "https://github.com/justinwoo/purescript-kishimen.git";
      rev = "v1.0.1";
      sha256 = "153d0mlf2x7xvbql5w0s4jl56s51aq0bg8ldxd3fm2kj7m0bay22";
    };
  };
  "lazy" = {
    name = "lazy";
    version = "v4.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript/purescript-lazy.git";
      rev = "v4.0.0";
      sha256 = "156q89l4nvvn14imbhp6xvvm82q7kqh1pyndmldmnkhiqyr84vqv";
    };
  };
  "lcg" = {
    name = "lcg";
    version = "v2.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript/purescript-lcg.git";
      rev = "v2.0.0";
      sha256 = "1851cq2g84jzjbvbmncbivbhaqzj9zv5ni3gs14k04nmx2brxmvj";
    };
  };
  "leibniz" = {
    name = "leibniz";
    version = "v5.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/paf31/purescript-leibniz.git";
      rev = "v5.0.0";
      sha256 = "1xxc84jx9qd4z89mlhjw602l6350cilvw8kd67ixsmsnd0krnl3f";
    };
  };
  "lenient-html-parser" = {
    name = "lenient-html-parser";
    version = "v4.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/justinwoo/purescript-lenient-html-parser.git";
      rev = "v4.0.0";
      sha256 = "19i4vcj93nz400yiyl4rj190alp5yv9lxm4vw83a5nrk32pll5xi";
    };
  };
  "lists" = {
    name = "lists";
    version = "v5.4.1";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript/purescript-lists.git";
      rev = "v5.4.1";
      sha256 = "0l0jiqhcjzkg4nv2a6h2vdf4izr9mf7cxc86cq1hf3j4dh6spym1";
    };
  };
  "logging" = {
    name = "logging";
    version = "v3.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/rightfold/purescript-logging.git";
      rev = "v3.0.0";
      sha256 = "0dhc3a3w68vgf03pycwxwspcqdhp1j8l140q5dbqy0a0wmmmknac";
    };
  };
  "logging-journald" = {
    name = "logging-journald";
    version = "v0.3.2";
    src = pkgs.fetchgit {
      url = "https://github.com/paluh/purescript-logging-journald.git";
      rev = "v0.3.2";
      sha256 = "1d1gv420rjd5w9grcrwmnkcyy7jbpfankgrdnvcxzpprpb6i0d2i";
    };
  };
  "machines" = {
    name = "machines";
    version = "v5.1.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript-contrib/purescript-machines.git";
      rev = "v5.1.0";
      sha256 = "0yhbhnsdf0cnvwr199ydhfh7n6z1sanyspscnfzqqavz4zj0isxc";
    };
  };
  "makkori" = {
    name = "makkori";
    version = "v1.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/justinwoo/purescript-makkori.git";
      rev = "v1.0.0";
      sha256 = "09i5j2xqp6rjmljc6kbn3h1ybw1j3dfwdl6bxzr0wqk3y14wpdlq";
    };
  };
  "math" = {
    name = "math";
    version = "v2.1.1";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript/purescript-math.git";
      rev = "v2.1.1";
      sha256 = "1msmy9w7y6fij62sdc55w68gpwkhm6lhgc8qjisjk4sxx1wdg1rr";
    };
  };
  "matrices" = {
    name = "matrices";
    version = "v5.0.1";
    src = pkgs.fetchgit {
      url = "https://github.com/kritzcreek/purescript-matrices.git";
      rev = "v5.0.1";
      sha256 = "1y2g4jmz8gg21blis8aa2bs2ap941vga31r4f1fs5xm91ryhafja";
    };
  };
  "maybe" = {
    name = "maybe";
    version = "v4.0.1";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript/purescript-maybe.git";
      rev = "v4.0.1";
      sha256 = "073wa0d51daxdwacfcxg5pf6ch63n4ii55xm1ih87bxrg8mp52mx";
    };
  };
  "media-types" = {
    name = "media-types";
    version = "v4.0.1";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript-contrib/purescript-media-types.git";
      rev = "v4.0.1";
      sha256 = "0ykwmxrhmwfy6c5mxjxa43xdf5xqakrqyvr5fn986yad50gjqj75";
    };
  };
  "memoize" = {
    name = "memoize";
    version = "v5.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/paf31/purescript-memoize.git";
      rev = "v5.0.0";
      sha256 = "191dsdp2znx028y8jg2c7iz2zpj8xfgd0zvnb5bx2zqky934a4dv";
    };
  };
  "metadata" = {
    name = "metadata";
    version = "v0.13.6";
    src = pkgs.fetchgit {
      url = "https://github.com/spacchetti/purescript-metadata.git";
      rev = "v0.13.6";
      sha256 = "1ck7aa13ny3mb0c586dc8shakcg7v2mlj0ixbzpjykj2jzfrdn62";
    };
  };
  "milkis" = {
    name = "milkis";
    version = "v7.4.0";
    src = pkgs.fetchgit {
      url = "https://github.com/justinwoo/purescript-milkis.git";
      rev = "v7.4.0";
      sha256 = "10ahz4idcb3qwys7x15k3za5gkw9zbk15cdmcqsi8lfh6fg2w2db";
    };
  };
  "minibench" = {
    name = "minibench";
    version = "v2.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript/purescript-minibench.git";
      rev = "v2.0.0";
      sha256 = "166hbl30bd3x14fld77f97h9bpkq3z775g3ymk61nsnfpf640p22";
    };
  };
  "mmorph" = {
    name = "mmorph";
    version = "v5.1.0";
    src = pkgs.fetchgit {
      url = "https://github.com/Thimoteus/purescript-mmorph.git";
      rev = "v5.1.0";
      sha256 = "1lvdclqi9wzs4j8xj8ygnj2b87hhpbnl0c6m28zac05rz87s09mg";
    };
  };
  "monad-control" = {
    name = "monad-control";
    version = "v5.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/athanclark/purescript-monad-control.git";
      rev = "v5.0.0";
      sha256 = "0czwzn59iscp2796k2hn4nqhaydi3f7pif8bgdd7276ajkzzay5c";
    };
  };
  "monad-logger" = {
    name = "monad-logger";
    version = "v1.3.1";
    src = pkgs.fetchgit {
      url = "https://github.com/cprussin/purescript-monad-logger.git";
      rev = "v1.3.1";
      sha256 = "0r1cp2x6mamjca5r5rm5mp1gidlll72paqrjd3z0j69l7iy7dgas";
    };
  };
  "monad-loops" = {
    name = "monad-loops";
    version = "v0.5.0";
    src = pkgs.fetchgit {
      url = "https://github.com/mlang/purescript-monad-loops.git";
      rev = "v0.5.0";
      sha256 = "08w7cx48lx4r5yfj077ipc7zny4qw3pbrkj6c6z4838l7fif2zyh";
    };
  };
  "monad-unlift" = {
    name = "monad-unlift";
    version = "v1.0.1";
    src = pkgs.fetchgit {
      url = "https://github.com/athanclark/purescript-monad-unlift.git";
      rev = "v1.0.1";
      sha256 = "1p0ckia95hmp6k2591ffgkx1s9pkp6z5p9x0hmq4z3j6fk4ikn24";
    };
  };
  "money" = {
    name = "money";
    version = "v8.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/i-am-tom/purescript-money.git";
      rev = "v8.0.0";
      sha256 = "1yi8207g7q7gx2bbgjsh7j1s1xslg02d3szj38kxm1ifhhgy7wvd";
    };
  };
  "motsunabe" = {
    name = "motsunabe";
    version = "v2.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/justinwoo/purescript-motsunabe.git";
      rev = "v2.0.0";
      sha256 = "03r81xs0gw5nchm93ap2lpirkng8bzgsb8xc5jxlii4sw8wn8ndh";
    };
  };
  "mysql" = {
    name = "mysql";
    version = "v4.1.1";
    src = pkgs.fetchgit {
      url = "https://github.com/oreshinya/purescript-mysql.git";
      rev = "v4.1.1";
      sha256 = "1p30mjvm7b1rxjx8iw454m78zzk8n4srcczlzxvkqdrxyyka4xlg";
    };
  };
  "naporitan" = {
    name = "naporitan";
    version = "v1.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/justinwoo/purescript-naporitan.git";
      rev = "v1.0.0";
      sha256 = "0d7krc91cda623ajarnwp5s1d35x4nr18y3095rz97yxw00lajzj";
    };
  };
  "naturals" = {
    name = "naturals";
    version = "v3.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/LiamGoodacre/purescript-naturals.git";
      rev = "v3.0.0";
      sha256 = "0jaly95g46rbb7xwfv655pgm2bsp11p1iriasa0w79ryv0p488hi";
    };
  };
  "newtype" = {
    name = "newtype";
    version = "v3.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript/purescript-newtype.git";
      rev = "v3.0.0";
      sha256 = "0qvk9p41miy806b05b4ikbr3if0fcyc35gfrwd2mflcxxp46011c";
    };
  };
  "node-buffer" = {
    name = "node-buffer";
    version = "v6.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript-node/purescript-node-buffer.git";
      rev = "v6.0.0";
      sha256 = "0pgl8r1rwzmbvwgbibk24jpgf6m7xcw3y7zfn6psgzca44c4hgsv";
    };
  };
  "node-child-process" = {
    name = "node-child-process";
    version = "v6.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript-node/purescript-node-child-process.git";
      rev = "v6.0.0";
      sha256 = "1r5gx9gr5xkrbvdnv6704zmpb987dgpblmhq5yhwq2xir6w35qnn";
    };
  };
  "node-electron" = {
    name = "node-electron";
    version = "v0.0.2";
    src = pkgs.fetchgit {
      url = "https://github.com/cprussin/purescript-node-electron.git";
      rev = "v0.0.2";
      sha256 = "1vgvjs0fi4p6cfgp61cnh7vj2czmyvxdsdyr535jqs9x61r2zwwh";
    };
  };
  "node-fs" = {
    name = "node-fs";
    version = "v5.0.1";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript-node/purescript-node-fs.git";
      rev = "v5.0.1";
      sha256 = "0i3bd7aw16vyb5sh5fzlvgg9q6cjdvmnfs57in6rxm34z8d8c0p8";
    };
  };
  "node-fs-aff" = {
    name = "node-fs-aff";
    version = "v6.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript-node/purescript-node-fs-aff.git";
      rev = "v6.0.0";
      sha256 = "0vjc9zag7y20yxhhv45hrwv9fbpmp0szv40vaxl5x8mnd5wv28x7";
    };
  };
  "node-he" = {
    name = "node-he";
    version = "v0.2.0";
    src = pkgs.fetchgit {
      url = "https://github.com/justinwoo/purescript-node-he.git";
      rev = "v0.2.0";
      sha256 = "00ha94m5ysv1r5lqfh90rnada9xp4jnncxqf4id1iskxhhkg3h28";
    };
  };
  "node-http" = {
    name = "node-http";
    version = "v5.0.2";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript-node/purescript-node-http.git";
      rev = "v5.0.2";
      sha256 = "0jr9mm0kdvkd3nf1g4l8w9p7n16qqji03fg1agxn7hngr4ja43pw";
    };
  };
  "node-net" = {
    name = "node-net";
    version = "v1.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript-node/purescript-node-net.git";
      rev = "v1.0.0";
      sha256 = "0ya6k6lnva1d7cm93nzb7q8wg5527yjsb04g72acnw4mnqsns5fs";
    };
  };
  "node-path" = {
    name = "node-path";
    version = "v3.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript-node/purescript-node-path.git";
      rev = "v3.0.0";
      sha256 = "0j1ni52m62dpcrfakl1ik131i31bkg91yv0p1c40sdw0f59fzf6x";
    };
  };
  "node-postgres" = {
    name = "node-postgres";
    version = "v5.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/epost/purescript-node-postgres.git";
      rev = "v5.0.0";
      sha256 = "1lcsm2n1vqiji6hgm2nwd4q12iwhbq5a6n4ab2sqyk79ndk2vd8i";
    };
  };
  "node-process" = {
    name = "node-process";
    version = "v7.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript-node/purescript-node-process.git";
      rev = "v7.0.0";
      sha256 = "1sbhpz3d3r6z12cx1k7rb6nycxf9cyc61zdx6mvk2q2lmzfdm1if";
    };
  };
  "node-readline" = {
    name = "node-readline";
    version = "v4.0.1";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript-node/purescript-node-readline.git";
      rev = "v4.0.1";
      sha256 = "1qc0wgcmhcjv15xlq2iqmhr7nphsnsipazpf2flnh7z109kmxj30";
    };
  };
  "node-sqlite3" = {
    name = "node-sqlite3";
    version = "v6.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/justinwoo/purescript-node-sqlite3.git";
      rev = "v6.0.0";
      sha256 = "0xrby3w76i7ig26jgfvr8lmiih0rkj2d3rbzm5d7x476444n7l56";
    };
  };
  "node-streams" = {
    name = "node-streams";
    version = "v4.0.1";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript-node/purescript-node-streams.git";
      rev = "v4.0.1";
      sha256 = "12dki2li0d7s54kvcr6gksb5nxf6kzs93gwxnq4bh1flri8p0i7r";
    };
  };
  "node-telegram-bot-api" = {
    name = "node-telegram-bot-api";
    version = "v4.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/justinwoo/purescript-node-telegram-bot-api.git";
      rev = "v4.0.0";
      sha256 = "17srhm44210phyhd5ik936h9c8igz105g9mrfzi1qax6xcadkdgk";
    };
  };
  "node-url" = {
    name = "node-url";
    version = "v4.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript-node/purescript-node-url.git";
      rev = "v4.0.0";
      sha256 = "0qbpdz62psy7hb34hw5rw2x1pq7yhd214ysza0xh46c3nlp0ib9y";
    };
  };
  "nodemailer" = {
    name = "nodemailer";
    version = "v2.0.2";
    src = pkgs.fetchgit {
      url = "https://github.com/oreshinya/purescript-nodemailer.git";
      rev = "v2.0.2";
      sha256 = "1pf32zjghgppci9gyqv1wmq2f4hzqdykwij8yncn81bdqrz9v0sn";
    };
  };
  "nodetrout" = {
    name = "nodetrout";
    version = "v0.0.1";
    src = pkgs.fetchgit {
      url = "https://github.com/nsaunders/purescript-nodetrout.git";
      rev = "v0.0.1";
      sha256 = "1lznjrgqnjl43fr3xds8prwi4jdafckzqma8clanr91a7drjjmf2";
    };
  };
  "nonempty" = {
    name = "nonempty";
    version = "v5.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript/purescript-nonempty.git";
      rev = "v5.0.0";
      sha256 = "1vz174sg32cqrp52nwb2vz9frrzmdwzzlgl4vc2cm5wlf2anirxj";
    };
  };
  "now" = {
    name = "now";
    version = "v4.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript-contrib/purescript-now.git";
      rev = "v4.0.0";
      sha256 = "18h5pif2dy4r7w1xg2zw4mvdqlar9xqp3rawkiavmsc946ncf3zs";
    };
  };
  "nullable" = {
    name = "nullable";
    version = "v4.1.1";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript-contrib/purescript-nullable.git";
      rev = "v4.1.1";
      sha256 = "14qaxxga8gqlr4pijyvqycdyhjr6qpz3h4aarficw5j75b7x8nyv";
    };
  };
  "numbers" = {
    name = "numbers";
    version = "v7.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/sharkdp/purescript-numbers.git";
      rev = "v7.0.0";
      sha256 = "1l9s22fkjf7wc0zd3wjax4hlif7gqh6ij0ijb8sq20mfh2xl4hj8";
    };
  };
  "option" = {
    name = "option";
    version = "v1.0.2";
    src = pkgs.fetchgit {
      url = "https://github.com/joneshf/purescript-option.git";
      rev = "v1.0.2";
      sha256 = "0j9r3q2db8m79660xxscsixxnz1qmj2xlwlva4wjvcq2nhls05gj";
    };
  };
  "options" = {
    name = "options";
    version = "v5.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript-contrib/purescript-options.git";
      rev = "v5.0.0";
      sha256 = "1n25pp0xsxfdxsnfdjjwlxz79iam9kapx4al9aj24yi148xhqckl";
    };
  };
  "optparse" = {
    name = "optparse";
    version = "v3.0.1";
    src = pkgs.fetchgit {
      url = "https://github.com/f-o-a-m/purescript-optparse.git";
      rev = "v3.0.1";
      sha256 = "01pqq0h9f91j275pd4ph53j49lddp6b4pwdwm78chfbyvjir7z2x";
    };
  };
  "ordered-collections" = {
    name = "ordered-collections";
    version = "v1.6.1";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript/purescript-ordered-collections.git";
      rev = "v1.6.1";
      sha256 = "0r48p94d3cyzni2z7ikzcap472k23dx8zq37c1prmjb01v03mfvc";
    };
  };
  "ordered-set" = {
    name = "ordered-set";
    version = "v0.4.0";
    src = pkgs.fetchgit {
      url = "https://github.com/flip111/purescript-ordered-set.git";
      rev = "v0.4.0";
      sha256 = "096s0gjhmfhagqvqrgklxr88xc0qgsmlpp9s5q56vm59cnn3mwz2";
    };
  };
  "orders" = {
    name = "orders";
    version = "v4.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript/purescript-orders.git";
      rev = "v4.0.0";
      sha256 = "13p1sm4dxkmxhld9x5qqg62iiajjb3qpzs66c1r24y5fs4zsfry4";
    };
  };
  "pairing" = {
    name = "pairing";
    version = "v5.1.0";
    src = pkgs.fetchgit {
      url = "https://github.com/paf31/purescript-pairing.git";
      rev = "v5.1.0";
      sha256 = "1lh3lna84rrmqlcab2p012cjjndhi9wyx2f3lv3bgwfgj65r2nbx";
    };
  };
  "pairs" = {
    name = "pairs";
    version = "v7.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/sharkdp/purescript-pairs.git";
      rev = "v7.0.0";
      sha256 = "1zd3fvxw3kpyb066rhmadh97ppfmypsl2q1w23xqaywwzpx2n3a3";
    };
  };
  "parallel" = {
    name = "parallel";
    version = "v4.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript/purescript-parallel.git";
      rev = "v4.0.0";
      sha256 = "1d5bnagabw2k8yxywkygwrpblb2ggqh2fhpqfrx2sj1y53x332hg";
    };
  };
  "parseint" = {
    name = "parseint";
    version = "v1.1.1";
    src = pkgs.fetchgit {
      url = "https://github.com/athanclark/purescript-parseint.git";
      rev = "v1.1.1";
      sha256 = "0h2l9gz6w71xllwxxwsrcy2r9idcwy5gsx0in1qn6d9ywdjs2qd9";
    };
  };
  "parsing" = {
    name = "parsing";
    version = "v5.0.3";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript-contrib/purescript-parsing.git";
      rev = "v5.0.3";
      sha256 = "0m5xvb5kis28laj3navyyakyq408vw115c2dvngf1vljzh1hk5kj";
    };
  };
  "partial" = {
    name = "partial";
    version = "v2.0.1";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript/purescript-partial.git";
      rev = "v2.0.1";
      sha256 = "11qr80989g7xmvw1brnrclsbg2wdkbr5k3cqpngfip3nnirrypcn";
    };
  };
  "pathy" = {
    name = "pathy";
    version = "v7.0.1";
    src = pkgs.fetchgit {
      url = "https://github.com/slamdata/purescript-pathy.git";
      rev = "v7.0.1";
      sha256 = "09nnwb51sr0mfma0hfrh23f314h3zrn2gwanq3n75asx3r6vqjif";
    };
  };
  "phoenix" = {
    name = "phoenix";
    version = "v4.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/brandonhamilton/purescript-phoenix.git";
      rev = "v4.0.0";
      sha256 = "1v054b511vig4r2m4z6g53bagfwx523s9p662fq09jhwbf94v4ip";
    };
  };
  "pipes" = {
    name = "pipes";
    version = "v6.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/felixSchl/purescript-pipes.git";
      rev = "v6.0.0";
      sha256 = "0vl37f42dy4w4hswiay22w0n14k7sr670x54iwn7428larzrzs8y";
    };
  };
  "pointed-list" = {
    name = "pointed-list";
    version = "v0.4.0";
    src = pkgs.fetchgit {
      url = "https://github.com/paluh/purescript-pointed-list.git";
      rev = "v0.4.0";
      sha256 = "15mzg2812v4vnb27fdgkw0yc6qsn81yc3jg1jl7rxfjsdaa9z95r";
    };
  };
  "polyform" = {
    name = "polyform";
    version = "v0.8.2";
    src = pkgs.fetchgit {
      url = "https://github.com/paluh/purescript-polyform.git";
      rev = "v0.8.2";
      sha256 = "0b6jbnh432xmcjhg3cipdqjhmdj2k1pqq8zg6iwx0ssdmbhnlqsd";
    };
  };
  "polyform-validators" = {
    name = "polyform-validators";
    version = "v0.0.6";
    src = pkgs.fetchgit {
      url = "https://github.com/lambdaterms/purescript-polyform-validators.git";
      rev = "v0.0.6";
      sha256 = "15yk9wjxx25pzp4kf2kkldwhl8ny44pwxwvby3q0p780mgv6ppjr";
    };
  };
  "posix-types" = {
    name = "posix-types";
    version = "v4.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript-node/purescript-posix-types.git";
      rev = "v4.0.0";
      sha256 = "0xvxjvxr7n4dv53p8w5qfmgx37cga5bp2rjhkbfvj89rb74vm3i1";
    };
  };
  "precise-datetime" = {
    name = "precise-datetime";
    version = "v5.1.1";
    src = pkgs.fetchgit {
      url = "https://github.com/awakesecurity/purescript-precise-datetime.git";
      rev = "v5.1.1";
      sha256 = "11c0nwavc6sn5d2795wclg43grqmzblhr7xvd7dzzya6ap6aw0v1";
    };
  };
  "prelude" = {
    name = "prelude";
    version = "v4.1.1";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript/purescript-prelude.git";
      rev = "v4.1.1";
      sha256 = "1frvjrv0mr508r6683l1mp5rzm1y2dz76fz40zf4k2c64sy6y1xm";
    };
  };
  "prettier" = {
    name = "prettier";
    version = "v0.3.0";
    src = pkgs.fetchgit {
      url = "https://github.com/gcanti/purescript-prettier.git";
      rev = "v0.3.0";
      sha256 = "1id7sn2zpkpkb36abqfivjnffcdf2q80wb30q5qidkzr7bhy2gl8";
    };
  };
  "profunctor" = {
    name = "profunctor";
    version = "v4.1.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript/purescript-profunctor.git";
      rev = "v4.1.0";
      sha256 = "1zwbxgimpknmashmq2rb773kbwbksr4ahcdkpnvvcapasxhds0a7";
    };
  };
  "profunctor-lenses" = {
    name = "profunctor-lenses";
    version = "v6.3.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript-contrib/purescript-profunctor-lenses.git";
      rev = "v6.3.0";
      sha256 = "07py52ngnhab0pc0ca42pnypbwk1lcm7mhz29kp4ap0qhi2z4n2y";
    };
  };
  "promises" = {
    name = "promises";
    version = "v3.1.1";
    src = pkgs.fetchgit {
      url = "https://github.com/thimoteus/purescript-promises.git";
      rev = "v3.1.1";
      sha256 = "17vc9ambjad1sjlkv72d5zrhq3m1m5wix2fkqflbbfwabk5qisvz";
    };
  };
  "proxy" = {
    name = "proxy";
    version = "v3.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript/purescript-proxy.git";
      rev = "v3.0.0";
      sha256 = "0rqf25b1n9p5sgx7gdsxwrfv9rb3sqxgqmqpp5kdm30lfk7snz24";
    };
  };
  "proxying" = {
    name = "proxying";
    version = "v1.1.0";
    src = pkgs.fetchgit {
      url = "https://github.com/matthew-hilty/purescript-proxying.git";
      rev = "v1.1.0";
      sha256 = "1xhk0b9jb10vxrmhzicr2gg0h9gwqq1y30annvi3fcahr9dlr1nb";
    };
  };
  "psa-utils" = {
    name = "psa-utils";
    version = "v6.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/natefaubion/purescript-psa-utils.git";
      rev = "v6.0.0";
      sha256 = "10z910i9d99fw3aiknskn6psvrndab0vrfh8bbx7ix497vy1gymn";
    };
  };
  "psc-ide" = {
    name = "psc-ide";
    version = "v15.0.1";
    src = pkgs.fetchgit {
      url = "https://github.com/kRITZCREEK/purescript-psc-ide.git";
      rev = "v15.0.1";
      sha256 = "05cdjf8n329xhsa0cnk0v8ani5ss70ma9s445z9ysfgmcmmfgfds";
    };
  };
  "psci-support" = {
    name = "psci-support";
    version = "v4.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript/purescript-psci-support.git";
      rev = "v4.0.0";
      sha256 = "0jd773zcklr6hjddqingzmk20a0afpm2r9pczfjbj0d93pbxb4xh";
    };
  };
  "quantities" = {
    name = "quantities";
    version = "v10.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/sharkdp/purescript-quantities.git";
      rev = "v10.0.0";
      sha256 = "0dw2rmvzapfwpjlyvvggghkn9yv261zx8r9ayyfrfbqympyl044m";
    };
  };
  "querydsl" = {
    name = "querydsl";
    version = "v0.10.1";
    src = pkgs.fetchgit {
      url = "https://github.com/Dretch/purescript-querydsl.git";
      rev = "v0.10.1";
      sha256 = "0w4knqcryhzfkfs92mrpp0iwil6zz0b0kz5k00y0yrfypzawkc78";
    };
  };
  "queue" = {
    name = "queue";
    version = "v8.0.2";
    src = pkgs.fetchgit {
      url = "https://github.com/athanclark/purescript-queue.git";
      rev = "v8.0.2";
      sha256 = "1c3jbjfv0dfr9ps4w64w7bp2hnl0vry36sppawv0fc0d49qxffzq";
    };
  };
  "quickcheck" = {
    name = "quickcheck";
    version = "v6.1.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript/purescript-quickcheck.git";
      rev = "v6.1.0";
      sha256 = "0b6208067krf81kzq2hbxs68386hcicbscwxbj5nck07ivjjvqh0";
    };
  };
  "quickcheck-combinators" = {
    name = "quickcheck-combinators";
    version = "v0.1.3";
    src = pkgs.fetchgit {
      url = "https://github.com/athanclark/purescript-quickcheck-combinators.git";
      rev = "v0.1.3";
      sha256 = "0bqxz1k2khm1c3j5aqj6cmbw0gbrhs5hl6f16bbqjb8xhglv1wx2";
    };
  };
  "quickcheck-laws" = {
    name = "quickcheck-laws";
    version = "v5.1.0";
    src = pkgs.fetchgit {
      url = "https://github.com/garyb/purescript-quickcheck-laws.git";
      rev = "v5.1.0";
      sha256 = "0mdarbrszp1qpmq8l98q38yn1a660ppcc0yx4w76740wn4jja2n4";
    };
  };
  "quotient" = {
    name = "quotient";
    version = "v3.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/rightfold/purescript-quotient.git";
      rev = "v3.0.0";
      sha256 = "0qkdw2kyf0p7mchi84dw8wm2jw58a2gii7wfjnddgn3j5jg36l2y";
    };
  };
  "radox" = {
    name = "radox";
    version = "v1.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/danieljharvey/purescript-radox.git";
      rev = "v1.0.0";
      sha256 = "1plji702ffhpfmxl8d7cl3400irq1q72va0dsjng4c90in7q8anf";
    };
  };
  "random" = {
    name = "random";
    version = "v4.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript/purescript-random.git";
      rev = "v4.0.0";
      sha256 = "0k37v7z529adx6ypxj0xjyfrz45qia6p0vki2wpvi8lik7c698gf";
    };
  };
  "rationals" = {
    name = "rationals";
    version = "v5.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/anttih/purescript-rationals.git";
      rev = "v5.0.0";
      sha256 = "1idvjvvx5kwmi8kj2ps95bcvlsgij1xgin4jfw3rmcqd930wqq6q";
    };
  };
  "rave" = {
    name = "rave";
    version = "v0.1.1";
    src = pkgs.fetchgit {
      url = "https://github.com/reactormonk/purescript-rave.git";
      rev = "v0.1.1";
      sha256 = "0avia2yix0vqi4r817c2yll2s5ng8ycglcpn1iygibji4w0dkr1a";
    };
  };
  "react" = {
    name = "react";
    version = "v8.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript-contrib/purescript-react.git";
      rev = "v8.0.0";
      sha256 = "1agpsxwz1i8pavcrpgnir5sk9vwrwk406psykjxmyahxby1dhwqi";
    };
  };
  "react-basic" = {
    name = "react-basic";
    version = "v14.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/lumihq/purescript-react-basic.git";
      rev = "v14.0.0";
      sha256 = "1jsiqsy6g4abb2m7w0km60mw3qvc1740k95b5vdzd4q4vccl1pid";
    };
  };
  "react-basic-hooks" = {
    name = "react-basic-hooks";
    version = "v5.2.0";
    src = pkgs.fetchgit {
      url = "https://github.com/spicydonuts/purescript-react-basic-hooks.git";
      rev = "v5.2.0";
      sha256 = "0634gynlhi3j40s1g5clqqyywz0817wmnm3kw4giwzgrqzgkkzlz";
    };
  };
  "react-basic-native" = {
    name = "react-basic-native";
    version = "v0.1.3";
    src = pkgs.fetchgit {
      url = "https://github.com/dwhitney/purescript-react-basic-native.git";
      rev = "v0.1.3";
      sha256 = "1n6dxn0740qpqq05wy5dq5d5my6kgsi1z0k5ribh48nbxaiv7g2f";
    };
  };
  "react-dom" = {
    name = "react-dom";
    version = "v6.1.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript-contrib/purescript-react-dom.git";
      rev = "v6.1.0";
      sha256 = "19kzsahx3kvgbi9bhnnz50fjmqvvgslsg6rk028bj4v28m8gra40";
    };
  };
  "react-queue" = {
    name = "react-queue";
    version = "v1.3.2";
    src = pkgs.fetchgit {
      url = "https://github.com/athanclark/purescript-react-queue.git";
      rev = "v1.3.2";
      sha256 = "1dl4kv487g5kphhca67p4fw4drw27r8alfl612ajksnm14k4qh10";
    };
  };
  "react-radox" = {
    name = "react-radox";
    version = "v0.0.5";
    src = pkgs.fetchgit {
      url = "https://github.com/danieljharvey/purescript-react-radox.git";
      rev = "v0.0.5";
      sha256 = "1w0pv9rvx84hr5mjc37n0g1jf62p7w3i220ym2ziws8gvwinxsig";
    };
  };
  "react-stylesheet" = {
    name = "react-stylesheet";
    version = "v0.0.2";
    src = pkgs.fetchgit {
      url = "https://github.com/danieljharvey/purescript-react-stylesheet.git";
      rev = "v0.0.2";
      sha256 = "03d4sdp57pij2zl2h76iv92n0ipinamia1p7mj9ddx6d6jz6ch52";
    };
  };
  "read" = {
    name = "read";
    version = "v1.0.1";
    src = pkgs.fetchgit {
      url = "https://github.com/truqu/purescript-read.git";
      rev = "v1.0.1";
      sha256 = "0q8c1xbwh781c1jngy04lbbaq44idy33klq7q1j5ax4vzgd54z0f";
    };
  };
  "record" = {
    name = "record";
    version = "v2.0.2";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript/purescript-record.git";
      rev = "v2.0.2";
      sha256 = "0ap1mc7bi8a20c5g11lxif6q68s2sc31khirfabngr1jpsm3r4lw";
    };
  };
  "record-extra" = {
    name = "record-extra";
    version = "v3.0.1";
    src = pkgs.fetchgit {
      url = "https://github.com/justinwoo/purescript-record-extra.git";
      rev = "v3.0.1";
      sha256 = "0n1zj2mngizl3bi999yrsv7z6bvb5caxxwrgpyykx29m63w0ghnb";
    };
  };
  "record-format" = {
    name = "record-format";
    version = "v2.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/kcsongor/purescript-record-format.git";
      rev = "v2.0.0";
      sha256 = "13fngd0aw3hhpw4b911a3wyk974jdlhhr5myrkwh6blgrhxqq6wx";
    };
  };
  "redis-client" = {
    name = "redis-client";
    version = "v1.0.1";
    src = pkgs.fetchgit {
      url = "https://github.com/paluh/purescript-redis-client.git";
      rev = "v1.0.1";
      sha256 = "0nnqlqx0f8wdzrd601havms56fv32fa4ibm4xjzkrji7p28fzk2s";
    };
  };
  "redis-hotqueue" = {
    name = "redis-hotqueue";
    version = "v0.2.1";
    src = pkgs.fetchgit {
      url = "https://github.com/paluh/purescript-redis-hotqueue.git";
      rev = "v0.2.1";
      sha256 = "09mn81yyhwwfa67hdr1pl4grqnnccy38x723zcldb8s21x4y9p1d";
    };
  };
  "redux-devtools" = {
    name = "redux-devtools";
    version = "v0.1.0";
    src = pkgs.fetchgit {
      url = "https://github.com/justinwoo/purescript-redux-devtools.git";
      rev = "v0.1.0";
      sha256 = "1bsi8b0gzxk4s2qm1mlasgmkwkz6f0bggwy7rxwnpfklid8yxdxm";
    };
  };
  "refined" = {
    name = "refined";
    version = "v0.2.0";
    src = pkgs.fetchgit {
      url = "https://github.com/danieljharvey/purescript-refined.git";
      rev = "v0.2.0";
      sha256 = "0fhpdka3q7r43iy49f1wqjmlg0q57gccd420m55ry220v5k2nd1h";
    };
  };
  "refs" = {
    name = "refs";
    version = "v4.1.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript/purescript-refs.git";
      rev = "v4.1.0";
      sha256 = "08161iy1xbafzblv033v84156azpcqkiw9v9d6gliphrq5fm17gm";
    };
  };
  "remotedata" = {
    name = "remotedata";
    version = "v4.2.0";
    src = pkgs.fetchgit {
      url = "https://github.com/krisajenkins/purescript-remotedata.git";
      rev = "v4.2.0";
      sha256 = "15ab34s3bz2kbzrhbxixzwpxmgj356px8z1s77r2pa9fjnmkn40v";
    };
  };
  "result" = {
    name = "result";
    version = "v1.0.3";
    src = pkgs.fetchgit {
      url = "https://github.com/ad-si/purescript-result.git";
      rev = "v1.0.3";
      sha256 = "18s19kp8n659fx36q46qrn2imks43mqs3k7y96cxwdl60smj74pk";
    };
  };
  "ring-modules" = {
    name = "ring-modules";
    version = "v5.0.1";
    src = pkgs.fetchgit {
      url = "https://github.com/f-o-a-m/purescript-ring-modules.git";
      rev = "v5.0.1";
      sha256 = "15bra3nxdffxqy35ab6ivby605740zqdlnvj02zhgqkmwgbrh2rj";
    };
  };
  "routing" = {
    name = "routing";
    version = "v9.0.1";
    src = pkgs.fetchgit {
      url = "https://github.com/slamdata/purescript-routing.git";
      rev = "v9.0.1";
      sha256 = "1d8zxb3q91gv11bbg2wpvi5qnrlwfac0np2lqqylyqzlzwnz7gs1";
    };
  };
  "routing-duplex" = {
    name = "routing-duplex";
    version = "v0.4.1";
    src = pkgs.fetchgit {
      url = "https://github.com/natefaubion/purescript-routing-duplex.git";
      rev = "v0.4.1";
      sha256 = "0cpihagrbldymd108x9isxwrckac1h1mb3rrj224m1p5bgv83ixi";
    };
  };
  "row-extra" = {
    name = "row-extra";
    version = "v0.0.1";
    src = pkgs.fetchgit {
      url = "https://github.com/athanclark/purescript-row-extra.git";
      rev = "v0.0.1";
      sha256 = "1y5krzgm82539mxz1rj77293w1gs7s9jhqb38z7ask57d63sx28z";
    };
  };
  "run" = {
    name = "run";
    version = "v3.0.1";
    src = pkgs.fetchgit {
      url = "https://github.com/natefaubion/purescript-run.git";
      rev = "v3.0.1";
      sha256 = "1lb95hxmmv3ndrxxwl1rwja8sply5na2bsgy1iym82cm96xcxib3";
    };
  };
  "run-profunctor-lenses" = {
    name = "run-profunctor-lenses";
    version = "v0.1.0";
    src = pkgs.fetchgit {
      url = "https://github.com/sigilion/purescript-run-profunctor-lenses.git";
      rev = "v0.1.0";
      sha256 = "0j7lhdq4jirfkg6m8xyp636rchym3x0kn7h6z4nsha8hrgwqp8gx";
    };
  };
  "run-streaming" = {
    name = "run-streaming";
    version = "v2.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/natefaubion/purescript-run-streaming.git";
      rev = "v2.0.0";
      sha256 = "0gpk81244512lw6kw0l3rjh0dd7ymr5808hy6q1gcdrz973cyc6g";
    };
  };
  "safely" = {
    name = "safely";
    version = "v4.0.1";
    src = pkgs.fetchgit {
      url = "https://github.com/paf31/purescript-safely.git";
      rev = "v4.0.1";
      sha256 = "1mrpz19smjsamz4cci287z89q715chzxna0gpbvdgivlca4z6879";
    };
  };
  "scrypt" = {
    name = "scrypt";
    version = "v1.0.1";
    src = pkgs.fetchgit {
      url = "https://github.com/athanclark/purescript-scrypt.git";
      rev = "v1.0.1";
      sha256 = "17npafbkcbkimrlxazz9ff28ywjrd6i7g84h6fan6hzd77f57756";
    };
  };
  "search-trie" = {
    name = "search-trie";
    version = "v1.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/klntsky/purescript-search-trie.git";
      rev = "v1.0.0";
      sha256 = "0z8i0n0jyx07jvjz1b4a6gjg76a4l3ba3cj1w1bizgijc3rz99r2";
    };
  };
  "selection-foldable" = {
    name = "selection-foldable";
    version = "v0.2.0";
    src = pkgs.fetchgit {
      url = "https://github.com/jamieyung/purescript-selection-foldable.git";
      rev = "v0.2.0";
      sha256 = "1ai4k1h3d6y305qvjngl51h9imrnq3dhqn2f6ghp3nmhjxwli5fy";
    };
  };
  "selective" = {
    name = "selective";
    version = "v0.1.1";
    src = pkgs.fetchgit {
      url = "https://github.com/anttih/purescript-selective.git";
      rev = "v0.1.1";
      sha256 = "01hh9ghjw06z2qai8rypml6zh62gvc5vf0fzkb0w3x83l77x0bji";
    };
  };
  "semirings" = {
    name = "semirings";
    version = "v5.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript/purescript-semirings.git";
      rev = "v5.0.0";
      sha256 = "0bhrhn2yvcgil7g63spb2xw966mdhlk9mpspnqfijdpb9n3b79ds";
    };
  };
  "server-sent-events" = {
    name = "server-sent-events";
    version = "v0.2.0";
    src = pkgs.fetchgit {
      url = "https://github.com/MichaelXavier/purescript-server-sent-events.git";
      rev = "v0.2.0";
      sha256 = "0n482cn7sydgiy3d4iw5bw7v9rvjqzkd36114l9ihlair8k130c6";
    };
  };
  "setimmediate" = {
    name = "setimmediate";
    version = "v1.0.2";
    src = pkgs.fetchgit {
      url = "https://github.com/athanclark/purescript-setimmediate.git";
      rev = "v1.0.2";
      sha256 = "0xxg2n70blnz2namwjvppi9mrwj4m62zxp4f3hkwasi8ag1gg1qz";
    };
  };
  "shoronpo" = {
    name = "shoronpo";
    version = "v0.3.0";
    src = pkgs.fetchgit {
      url = "https://github.com/justinwoo/purescript-shoronpo.git";
      rev = "v0.3.0";
      sha256 = "0vyzs7yzc8dxvci2y6qzbwa82ag8big5qwiffx73fzvk52k5hfy6";
    };
  };
  "signal" = {
    name = "signal";
    version = "v10.1.0";
    src = pkgs.fetchgit {
      url = "https://github.com/bodil/purescript-signal.git";
      rev = "v10.1.0";
      sha256 = "03jkc6l01vv28drg1rjx9ymc2bndx9933ckf60bi4ar909kx64v5";
    };
  };
  "sijidou" = {
    name = "sijidou";
    version = "v1.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/justinwoo/purescript-sijidou.git";
      rev = "v1.0.0";
      sha256 = "0i56nxkjks8lgav1m1m3b40l615kdsq45x8dwznqsqn269ks0xjl";
    };
  };
  "simple-emitter" = {
    name = "simple-emitter";
    version = "v1.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/oreshinya/purescript-simple-emitter.git";
      rev = "v1.0.0";
      sha256 = "0hy7pbw6qfczns0yvfjyiqkkl0fqj0nf7jcwyf1q5sdcn3xm3b0x";
    };
  };
  "simple-i18n" = {
    name = "simple-i18n";
    version = "v0.1.2";
    src = pkgs.fetchgit {
      url = "https://github.com/oreshinya/purescript-simple-i18n.git";
      rev = "v0.1.2";
      sha256 = "10badmscxwkcjjd6z68bbwcg2xlg7chi02nms8gl8nibxc8gs59q";
    };
  };
  "simple-json" = {
    name = "simple-json";
    version = "v7.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/justinwoo/purescript-simple-json.git";
      rev = "v7.0.0";
      sha256 = "1x2f4zq1m9r3vg9hdpjld98jd56w7fss8fzvlrmnrw6xzd1gi456";
    };
  };
  "simple-json-generics" = {
    name = "simple-json-generics";
    version = "v0.1.0";
    src = pkgs.fetchgit {
      url = "https://github.com/justinwoo/purescript-simple-json-generics.git";
      rev = "v0.1.0";
      sha256 = "1izbrh9614yi0lzpnqbn9q7hbllhvvhrgyziganj7rzgphwn3ywx";
    };
  };
  "simple-json-utils" = {
    name = "simple-json-utils";
    version = "v0.1.0";
    src = pkgs.fetchgit {
      url = "https://github.com/justinwoo/purescript-simple-json-utils.git";
      rev = "v0.1.0";
      sha256 = "05mpvn3hrl86sapns88h7k9ccv29d8xmcnll8iz6ix5ibmh9vk2v";
    };
  };
  "simple-jwt" = {
    name = "simple-jwt";
    version = "v2.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/oreshinya/purescript-simple-jwt.git";
      rev = "v2.0.0";
      sha256 = "15d2gph12h0g9izyakp310mjl8l8gp2m4ffppiqprfsw1y3gi8xm";
    };
  };
  "simple-timestamp" = {
    name = "simple-timestamp";
    version = "v3.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/reactormonk/purescript-simple-timestamp.git";
      rev = "v3.0.0";
      sha256 = "0s4g2lcyi6gn0h4mj283inxdfhk6dyv1ypz89ry121l6xmilws9w";
    };
  };
  "sized-matrices" = {
    name = "sized-matrices";
    version = "v1.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/csicar/purescript-sized-matrices";
      rev = "v1.0.0";
      sha256 = "1csabdl8s61825zsip5x2j6vf15jwi66bi53xma7p1canwhifvpg";
    };
  };
  "sized-vectors" = {
    name = "sized-vectors";
    version = "v5.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/bodil/purescript-sized-vectors.git";
      rev = "v5.0.0";
      sha256 = "0rl60bf0ppvs21plhfq42n4h0yfr9fix5cl2hqbby9ic7vq4hav1";
    };
  };
  "sjcl" = {
    name = "sjcl";
    version = "v0.0.1";
    src = pkgs.fetchgit {
      url = "https://github.com/athanclark/purescript-sjcl.git";
      rev = "v0.0.1";
      sha256 = "16pm6axlr9yq8slkg3iqrpf1kf18471wacjlnmss4zx8f33f1676";
    };
  };
  "slug" = {
    name = "slug";
    version = "v1.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/thomashoneyman/purescript-slug.git";
      rev = "v1.0.0";
      sha256 = "1apikpa1888lagysbmbv0x7lzl7bivy8n2709aa0r99y5dswracl";
    };
  };
  "smolder" = {
    name = "smolder";
    version = "v12.3.0";
    src = pkgs.fetchgit {
      url = "https://github.com/bodil/purescript-smolder.git";
      rev = "v12.3.0";
      sha256 = "06galacn3346ghf4w56qwj5d4z06zmlf9prd24vrvnaiwhpf42d7";
    };
  };
  "snabbdom" = {
    name = "snabbdom";
    version = "v1.0.1";
    src = pkgs.fetchgit {
      url = "https://github.com/LukaJCB/purescript-snabbdom.git";
      rev = "v1.0.1";
      sha256 = "0khzsd4rsljs189hc64lw7da2sbwzgizlxfq0gq1rj7y99lhlvsd";
    };
  };
  "sodium" = {
    name = "sodium";
    version = "v2.1.0";
    src = pkgs.fetchgit {
      url = "https://github.com/SodiumFRP/purescript-sodium.git";
      rev = "v2.1.0";
      sha256 = "01v7gz08ls145m4wxd95gk7wiii2crf8mjnhzjyzmph6pgbb77xb";
    };
  };
  "sparse-polynomials" = {
    name = "sparse-polynomials";
    version = "v1.0.3";
    src = pkgs.fetchgit {
      url = "https://github.com/Ebmtranceboy/purescript-sparse-polynomials.git";
      rev = "v1.0.3";
      sha256 = "12i41r8l4hr5i7cz48xah1ls9n3avpsk0sw7140nwgnz2wdm2j6f";
    };
  };
  "spec" = {
    name = "spec";
    version = "v4.0.1";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript-spec/purescript-spec.git";
      rev = "v4.0.1";
      sha256 = "0svz079yvykx4dj89qgaqi0zwy7d3l1yhkrcll2m81y3idhr1c2p";
    };
  };
  "spec-discovery" = {
    name = "spec-discovery";
    version = "v4.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/owickstrom/purescript-spec-discovery.git";
      rev = "v4.0.0";
      sha256 = "0kwc4nvy6rpbnhayang92h74fgyr28bh82pskwj7lm4sy513vhfw";
    };
  };
  "spec-quickcheck" = {
    name = "spec-quickcheck";
    version = "v3.1.0";
    src = pkgs.fetchgit {
      url = "https://github.com/owickstrom/purescript-spec-quickcheck.git";
      rev = "v3.1.0";
      sha256 = "1l51v2j4z2cwdnf9hyx69jmlzlkk24l8gj38iphfspaiwyqwcmpg";
    };
  };
  "spork" = {
    name = "spork";
    version = "v1.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/natefaubion/purescript-spork.git";
      rev = "v1.0.0";
      sha256 = "00qgap0jmnsgv0w9mkgbxjp2vnkfqly404l3igb75i8s0gp1fxp2";
    };
  };
  "st" = {
    name = "st";
    version = "v4.1.1";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript/purescript-st.git";
      rev = "v4.1.1";
      sha256 = "1jpz8rpk2ac6kshflri8pdw4s1hf8g4alz5bw69x23sj9sccxgs0";
    };
  };
  "string-parsers" = {
    name = "string-parsers";
    version = "v5.0.1";
    src = pkgs.fetchgit {
      url = "https://github.com/paf31/purescript-string-parsers.git";
      rev = "v5.0.1";
      sha256 = "0qz9zry17hwvbhsbx25lj3g15yki22pdfz4slbqpv64mh6clb1iz";
    };
  };
  "strings" = {
    name = "strings";
    version = "v4.0.2";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript/purescript-strings.git";
      rev = "v4.0.2";
      sha256 = "164mx0j9pv47m2hzckq51aa1rpb5wijcrh4bi78xn3s8n0fb6dq1";
    };
  };
  "strings-extra" = {
    name = "strings-extra";
    version = "v2.1.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript-contrib/purescript-strings-extra.git";
      rev = "v2.1.0";
      sha256 = "1kkfb5mw5d136cywzrd4pg2pbpz8s6ggskd589r72w14px8xnrjx";
    };
  };
  "stringutils" = {
    name = "stringutils";
    version = "v0.0.10";
    src = pkgs.fetchgit {
      url = "https://github.com/menelaos/purescript-stringutils.git";
      rev = "v0.0.10";
      sha256 = "1l6ljz55l8pl2lmnzq1f881rsiz8il12k4xgir41qfm1c0hch235";
    };
  };
  "struct" = {
    name = "struct";
    version = "v1.1.0";
    src = pkgs.fetchgit {
      url = "https://github.com/matthew-hilty/purescript-struct.git";
      rev = "v1.1.0";
      sha256 = "1fabc6zlmcdgv0byzfqdn4zbg2yinvhr11vpx9mbcihw609mwsmq";
    };
  };
  "stylesheet" = {
    name = "stylesheet";
    version = "v0.0.3";
    src = pkgs.fetchgit {
      url = "https://github.com/danieljharvey/purescript-stylesheet.git";
      rev = "v0.0.3";
      sha256 = "1dwga99r64gn1hc7jvcgplj8qc2rpqs2hk0f22ikkb2pvc7w02wq";
    };
  };
  "subcategory" = {
    name = "subcategory";
    version = "v0.2.0";
    src = pkgs.fetchgit {
      url = "https://github.com/matthew-hilty/purescript-subcategory.git";
      rev = "v0.2.0";
      sha256 = "1nsr2hfr3kwa871sn0fsgg8fy30ppvwx5c3i61blnml8gh0f593m";
    };
  };
  "subtlecrypto" = {
    name = "subtlecrypto";
    version = "v0.0.1";
    src = pkgs.fetchgit {
      url = "https://github.com/athanclark/purescript-subtlecrypto.git";
      rev = "v0.0.1";
      sha256 = "09jv6l5zgrd8f802k0m4iqli64b42i2mmdk38pfgykmqjfmawg08";
    };
  };
  "suggest" = {
    name = "suggest";
    version = "v5.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/nwolverson/purescript-suggest.git";
      rev = "v5.0.0";
      sha256 = "15vl0i9rf2xfdc5rsdax7mxjraaq9qx41lrq805ws5p20yqh9b4d";
    };
  };
  "sunde" = {
    name = "sunde";
    version = "v2.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/justinwoo/purescript-sunde.git";
      rev = "v2.0.0";
      sha256 = "051kfqc06fbhavd3anvfhi5wfj76a6q4piis4lplypaw9g4n64l2";
    };
  };
  "svg-parser" = {
    name = "svg-parser";
    version = "v1.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/rnons/purescript-svg-parser.git";
      rev = "v1.0.0";
      sha256 = "0a397vkj67j3rkmq25q85m8n8336kwz0vdfpg28m295i49vlhn6s";
    };
  };
  "svg-parser-halogen" = {
    name = "svg-parser-halogen";
    version = "v2.0.0-rc.1";
    src = pkgs.fetchgit {
      url = "https://github.com/rnons/purescript-svg-parser-halogen.git";
      rev = "v2.0.0-rc.1";
      sha256 = "1b0l2f4m0532pc3khj84wlmqpg6pgwsvxhkgdp7g7v0gs3nrw9p9";
    };
  };
  "systemd-journald" = {
    name = "systemd-journald";
    version = "v0.2.1";
    src = pkgs.fetchgit {
      url = "https://github.com/paluh/purescript-systemd-journald.git";
      rev = "v0.2.1";
      sha256 = "0dbyhimbj8jyiak9i3kilwcwh76jg8ygwqq1jk92njvkr4xp15z6";
    };
  };
  "tailrec" = {
    name = "tailrec";
    version = "v4.1.1";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript/purescript-tailrec.git";
      rev = "v4.1.1";
      sha256 = "0n0sxr44d1lwlrgv8b48ml6vg0r5abfvyywn50jb0i1agnm53i4n";
    };
  };
  "test-unit" = {
    name = "test-unit";
    version = "v15.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/bodil/purescript-test-unit.git";
      rev = "v15.0.0";
      sha256 = "06lb90vppa7naqqwz7wbvlkkyz86pbdd3ycw3d2iygvxbzkz8xjn";
    };
  };
  "text-encoding" = {
    name = "text-encoding";
    version = "v1.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/AlexaDeWit/purescript-text-encoding.git";
      rev = "v1.0.0";
      sha256 = "1r6ihj6m6ahp1cjf4i25pq9a00r2mvgrd8794xiapzsaigljz42c";
    };
  };
  "thermite" = {
    name = "thermite";
    version = "v6.3.1";
    src = pkgs.fetchgit {
      url = "https://github.com/paf31/purescript-thermite.git";
      rev = "v6.3.1";
      sha256 = "018pi5h5r4bj2g53vqmyks334ivp77jvcqvv3m6wq5lq8xcywz02";
    };
  };
  "thermite-dom" = {
    name = "thermite-dom";
    version = "v0.3.1";
    src = pkgs.fetchgit {
      url = "https://github.com/athanclark/purescript-thermite-dom.git";
      rev = "v0.3.1";
      sha256 = "106dsja8wr8hjbxwvnqanfcfmjbpwgwgvkias9f97hb18vvi4pxj";
    };
  };
  "these" = {
    name = "these";
    version = "v4.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript-contrib/purescript-these.git";
      rev = "v4.0.0";
      sha256 = "0ywwpbcz1d0pdi3f9h9kla52vq1if8zwdz7jq7lqz5s8zj8kyg5r";
    };
  };
  "tolerant-argonaut" = {
    name = "tolerant-argonaut";
    version = "v1.1.0";
    src = pkgs.fetchgit {
      url = "https://github.com/matthew-hilty/purescript-tolerant-argonaut.git";
      rev = "v1.1.0";
      sha256 = "1mxmvp499j7s5jddigplp7wxlaj9risq0kmsly2ipj55fmnqnjqb";
    };
  };
  "toppokki" = {
    name = "toppokki";
    version = "v2.4.0";
    src = pkgs.fetchgit {
      url = "https://github.com/justinwoo/purescript-toppokki.git";
      rev = "v2.4.0";
      sha256 = "1ammcm5sic05c23hhnysi2hs70ssz9wwz0kr4mf1kc1l1hxq7w5p";
    };
  };
  "tortellini" = {
    name = "tortellini";
    version = "v5.1.0";
    src = pkgs.fetchgit {
      url = "https://github.com/justinwoo/purescript-tortellini.git";
      rev = "v5.1.0";
      sha256 = "00difmyxp5374gqfxf46zyjpphi87lx5ylwfjd8m8idap901gzh7";
    };
  };
  "transformers" = {
    name = "transformers";
    version = "v4.2.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript/purescript-transformers.git";
      rev = "v4.2.0";
      sha256 = "03qmvl9s7lbvm73dy9ps6qp39pdcm91hb8yakgj7aq8hgpj7b6bg";
    };
  };
  "trout" = {
    name = "trout";
    version = "v0.12.2";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript-hyper/purescript-trout.git";
      rev = "v0.12.2";
      sha256 = "1abhjg75p0vvj3lmfn9gd0k3pgjkibxfsckga397j9ld4lvc7034";
    };
  };
  "trout-client" = {
    name = "trout-client";
    version = "v0.12.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript-hyper/purescript-trout-client.git";
      rev = "v0.12.0";
      sha256 = "16h7lgvycdrz5j08m8jv2m14dhl89sz2c6jxzra0f0xc54lshlxr";
    };
  };
  "tuples" = {
    name = "tuples";
    version = "v5.1.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript/purescript-tuples.git";
      rev = "v5.1.0";
      sha256 = "045nsy0r2g51gih0wjhcvhl6gfr8947mlrqwg644ygz72rjm8wq4";
    };
  };
  "tuples-native" = {
    name = "tuples-native";
    version = "v2.0.2";
    src = pkgs.fetchgit {
      url = "https://github.com/athanclark/purescript-tuples-native.git";
      rev = "v2.0.2";
      sha256 = "1sqbg73n5i5nvw0mzfgb1wyva5wcppiw08cqg4g4zdv1zdvmjkk2";
    };
  };
  "type-equality" = {
    name = "type-equality";
    version = "v3.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript/purescript-type-equality.git";
      rev = "v3.0.0";
      sha256 = "1b7szyca5s96gaawvgwrw7fa8r7gqsdff7xhz3vvngnylv2scl3w";
    };
  };
  "type-isequal" = {
    name = "type-isequal";
    version = "v0.1.0";
    src = pkgs.fetchgit {
      url = "https://github.com/justinwoo/purescript-type-isequal.git";
      rev = "v0.1.0";
      sha256 = "0bsz9d160kpih35xdbd617x48c394spdmk1dj9v6mhsii87hwa54";
    };
  };
  "typedenv" = {
    name = "typedenv";
    version = "v0.0.1";
    src = pkgs.fetchgit {
      url = "https://github.com/nsaunders/purescript-typedenv.git";
      rev = "v0.0.1";
      sha256 = "05cgrn4fb89yssai069nwdpc67zjq7z9c2pbfqsx5p53580kpf7h";
    };
  };
  "typelevel" = {
    name = "typelevel";
    version = "v6.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/bodil/purescript-typelevel.git";
      rev = "v6.0.0";
      sha256 = "0gxj926ppx6d8inir589x0a30iv29hqc2y6vsa1n1c2vlcqv2zgd";
    };
  };
  "typelevel-peano" = {
    name = "typelevel-peano";
    version = "v0.1.8";
    src = pkgs.fetchgit {
      url = "https://github.com/csicar/purescript-typelevel-peano.git";
      rev = "v0.1.8";
      sha256 = "0ic9ps3dj0g4g4yh4h4rhcckb98j41h54xgf6prilflgx30m1wck";
    };
  };
  "typelevel-prelude" = {
    name = "typelevel-prelude";
    version = "v5.0.2";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript/purescript-typelevel-prelude.git";
      rev = "v5.0.2";
      sha256 = "1kp1b35y8wzin9m5lfyp239nclq703xz2b4373x3075xfp6qdcwf";
    };
  };
  "typelevel-rowlist-limits" = {
    name = "typelevel-rowlist-limits";
    version = "v0.0.6";
    src = pkgs.fetchgit {
      url = "https://github.com/mwalkerwells/purescript-typelevel-rowlist-limits.git";
      rev = "v0.0.6";
      sha256 = "1mjzjx9w20bwcmrwgqvwld6kwkvlb8pycn41f0cn17gsq3ykyyhn";
    };
  };
  "uint" = {
    name = "uint";
    version = "v5.1.4";
    src = pkgs.fetchgit {
      url = "https://github.com/zaquest/purescript-uint.git";
      rev = "v5.1.4";
      sha256 = "1hgjwh7m9km8ywnc7k4blgycmj2sx4vr9i5rd5cr47cdl71h0sh7";
    };
  };
  "uint-instances" = {
    name = "uint-instances";
    version = "v0.0.1";
    src = pkgs.fetchgit {
      url = "https://github.com/athanclark/purescript-uint-instances.git";
      rev = "v0.0.1";
      sha256 = "1mkb462028i6sp3hcnhzhxqa1y7jz4q07x4xwg4sfn9rfy9dj65a";
    };
  };
  "undefinable" = {
    name = "undefinable";
    version = "v4.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/ethul/purescript-undefinable.git";
      rev = "v4.0.0";
      sha256 = "03z91g1n6zmiqgqqxi65g99a9qxfb8dcnzg2wnb16i2rl8frsl3v";
    };
  };
  "undefined" = {
    name = "undefined";
    version = "v1.0.2";
    src = pkgs.fetchgit {
      url = "https://github.com/bklaric/purescript-undefined.git";
      rev = "v1.0.2";
      sha256 = "0kj504j3r9wr7m3yhm53bcfdzai0c2g99d2pdxlfinxk4pmixyrd";
    };
  };
  "undefined-or" = {
    name = "undefined-or";
    version = "v1.0.1";
    src = pkgs.fetchgit {
      url = "https://github.com/d86leader/purescript-undefined-or.git";
      rev = "v1.0.1";
      sha256 = "05nmyc530whj3m04zvknvkwzyqymyrpadgrmcm2i468xafwzxqld";
    };
  };
  "unfoldable" = {
    name = "unfoldable";
    version = "v4.1.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript/purescript-unfoldable.git";
      rev = "v4.1.0";
      sha256 = "03g2zz26ai8a44z07jhdj0yvv8q6nq6ifcrzc7qjmdkjywg2cj9v";
    };
  };
  "unicode" = {
    name = "unicode";
    version = "v4.0.1";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript-contrib/purescript-unicode.git";
      rev = "v4.0.1";
      sha256 = "1a53jv7pzyjk5v6kmwwy50d3l8d26k0id59sn8g3lzkih24nalhp";
    };
  };
  "unordered-collections" = {
    name = "unordered-collections";
    version = "v1.8.3";
    src = pkgs.fetchgit {
      url = "https://github.com/fehrenbach/purescript-unordered-collections.git";
      rev = "v1.8.3";
      sha256 = "15zcx49aq1cwms29lmhar7yc4580cclmhxa9krpqbi6d9d6sw050";
    };
  };
  "unorm" = {
    name = "unorm";
    version = "v1.0.1";
    src = pkgs.fetchgit {
      url = "https://github.com/athanclark/purescript-unorm.git";
      rev = "v1.0.1";
      sha256 = "0wjzxaij1v6wn5jjr91kn07h7l3h1skkqplizqfw9dgkz5m89aw2";
    };
  };
  "unsafe-coerce" = {
    name = "unsafe-coerce";
    version = "v4.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript/purescript-unsafe-coerce.git";
      rev = "v4.0.0";
      sha256 = "0k9255mk2mz6xjb11pwkgfcblmmyvr86ig5kr92jwy95xim09zip";
    };
  };
  "unsafe-reference" = {
    name = "unsafe-reference";
    version = "v3.0.1";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript-contrib/purescript-unsafe-reference.git";
      rev = "v3.0.1";
      sha256 = "0q758dz59qz0li4s3w1qcg921xp5i5rh6i1l611iv7rr8cbj11al";
    };
  };
  "uri" = {
    name = "uri";
    version = "v7.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/slamdata/purescript-uri.git";
      rev = "v7.0.0";
      sha256 = "1ry5h5656k2hn3y5s35y7pz0rngbkvj9jc783i4h9ai3hndi00py";
    };
  };
  "uuid" = {
    name = "uuid";
    version = "v6.1.0";
    src = pkgs.fetchgit {
      url = "https://github.com/spicydonuts/purescript-uuid.git";
      rev = "v6.1.0";
      sha256 = "1ldrhjavv9vngdnh9i7pbg93iwaslrs6rfcv8jh5cjywpin8n6zx";
    };
  };
  "validation" = {
    name = "validation";
    version = "v4.2.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript/purescript-validation.git";
      rev = "v4.2.0";
      sha256 = "03irk6n7jgsimhp9ckrg2ns7qbc8d383ls3sslxgir5mr8xdc44g";
    };
  };
  "variant" = {
    name = "variant";
    version = "v6.0.1";
    src = pkgs.fetchgit {
      url = "https://github.com/natefaubion/purescript-variant.git";
      rev = "v6.0.1";
      sha256 = "0cn227q57zbqm6r1aw5kvnp1x8zkc1x7wx28yyz311lmy7k1mkql";
    };
  };
  "vectorfield" = {
    name = "vectorfield";
    version = "v1.0.1";
    src = pkgs.fetchgit {
      url = "https://github.com/csicar/purescript-vectorfield.git";
      rev = "v1.0.1";
      sha256 = "1mljg7pbm58xv4ilsc2kq7dll2l314cqa77dz4vaqgj12vfpv1lc";
    };
  };
  "web-clipboard" = {
    name = "web-clipboard";
    version = "v2.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript-web/purescript-web-clipboard.git";
      rev = "v2.0.0";
      sha256 = "17i7rpzxi7pgas32xz8vjcs54m94gnmca3my0p70gzvf3rasnxyx";
    };
  };
  "web-dom" = {
    name = "web-dom";
    version = "v4.0.2";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript-web/purescript-web-dom.git";
      rev = "v4.0.2";
      sha256 = "0yyf4camcrq7h6b3mhlxk516fdmdni0bncz4kc4wppjds01la5ll";
    };
  };
  "web-events" = {
    name = "web-events";
    version = "v2.0.1";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript-web/purescript-web-events.git";
      rev = "v2.0.1";
      sha256 = "1vd1gfh6zv50bq4v1ppl2wvc5mskcw9n1bfj29qjg0dx0ffxzv2f";
    };
  };
  "web-file" = {
    name = "web-file";
    version = "v2.3.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript-web/purescript-web-file.git";
      rev = "v2.3.0";
      sha256 = "1pn3cp8kkvxlg0vx3m53i83n8c92agpxd7dj96ma3bnyskd17fxv";
    };
  };
  "web-html" = {
    name = "web-html";
    version = "v2.3.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript-web/purescript-web-html.git";
      rev = "v2.3.0";
      sha256 = "1gz2wkph49rkwd7cm6j0mx9sv6a3nzxcidv50mrxydhl3h8153gy";
    };
  };
  "web-socket" = {
    name = "web-socket";
    version = "v2.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript-web/purescript-web-socket.git";
      rev = "v2.0.0";
      sha256 = "0kp4rmrqmsjmih7nw7dl75d36pny3ikafnhnfchpc834ap9451zh";
    };
  };
  "web-storage" = {
    name = "web-storage";
    version = "v3.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript-web/purescript-web-storage.git";
      rev = "v3.0.0";
      sha256 = "1ycb2s29aw9w6lqik6hfmp9nf9i2yhn0q26hc4p3450jam5mj8bx";
    };
  };
  "web-touchevents" = {
    name = "web-touchevents";
    version = "v2.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript-web/purescript-web-touchevents.git";
      rev = "v2.0.0";
      sha256 = "0mhsfqlglx04q3vkjg4k33bkxcpx2cmbq4x1zxyhl48q1qqmnic8";
    };
  };
  "web-uievents" = {
    name = "web-uievents";
    version = "v2.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript-web/purescript-web-uievents.git";
      rev = "v2.0.0";
      sha256 = "04032nl0z9hjq7b799zhbn7in10dz9kgrrcs0adjbaf08rc2kcwh";
    };
  };
  "web-xhr" = {
    name = "web-xhr";
    version = "v3.0.2";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript-web/purescript-web-xhr.git";
      rev = "v3.0.2";
      sha256 = "1g35z2j9i5lqfms4yi8hgbgc85x6dy9lr3ygbr2f5fgkz86x3hqj";
    };
  };
  "websocket-moderate" = {
    name = "websocket-moderate";
    version = "v7.0.1";
    src = pkgs.fetchgit {
      url = "https://github.com/athanclark/purescript-websocket-moderate.git";
      rev = "v7.0.1";
      sha256 = "1vwf1xich83lwbag5raypcnd59zf8n563aivf71gd5r06wl9grp9";
    };
  };
  "xiaomian" = {
    name = "xiaomian";
    version = "v0.1.0";
    src = pkgs.fetchgit {
      url = "https://github.com/justinwoo/purescript-xiaomian.git";
      rev = "v0.1.0";
      sha256 = "1n2ghz1z04xqxmjqdh0phnslq6fc7027j70si0lbp7njic6xljjp";
    };
  };
  "yargs" = {
    name = "yargs";
    version = "v4.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/paf31/purescript-yargs.git";
      rev = "v4.0.0";
      sha256 = "10xbiyghplg54n9p7vs7mba9gmqfsbyiz0045c5p4p3v6djj60w3";
    };
  };
  "z85" = {
    name = "z85";
    version = "v0.0.2";
    src = pkgs.fetchgit {
      url = "https://github.com/athanclark/purescript-z85.git";
      rev = "v0.0.2";
      sha256 = "1r48vzyznqzms83m4q72g4mxyapc7j196fb1va3n1vk9g7qxi6dk";
    };
  };
  "zeta" = {
    name = "zeta";
    version = "v6.0.0";
    src = pkgs.fetchgit {
      url = "https://github.com/athanclark/purescript-zeta.git";
      rev = "v6.0.0";
      sha256 = "1lb7aq35akr1ivrjx4n68p5a7x34s2c24qicfw08xzd7pa8y1mvg";
    };
  };
  "zeta-extra" = {
    name = "zeta-extra";
    version = "v0.0.1";
    src = pkgs.fetchgit {
      url = "https://github.com/athanclark/purescript-zeta-extra.git";
      rev = "v0.0.1";
      sha256 = "1vgcg7z6sg2c2fr93zmqqczlxs7abljdaf79z9iggdzx9p3kzz65";
    };
  };
}
