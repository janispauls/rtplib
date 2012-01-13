-module(codec_gsm_test).

-include("rtp.hrl").
-include_lib("eunit/include/eunit.hrl").

codec_gsm_test_() ->
	[
		{"Test decoding from GSM to PCM",
			fun() -> ?assertEqual(
						true,
						test_utils:codec_decode(
							"../test/sample-gsm-16-mono-8khz.raw",
							"../test/sample-pcm-16-mono-8khz.raw",
							33,
							320,
							"GSM",
							{'GSM',8000,1}
						)
					) end
		},
		{"Test encoding from PCM to GSM",
			fun() -> ?assertEqual(
						true,
						test_utils:codec_encode(
							"../test/sample-pcm-16-mono-8khz.raw",
							"../test/sample-gsm-16-mono-8khz.from_pcm",
							320,
							33,
							"GSM",
							{'GSM',8000,1}
						)
					) end
		}
	].
