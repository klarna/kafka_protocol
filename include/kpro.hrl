%%%   Copyright (c) 2017, Klarna AB
%%%
%%%   Licensed under the Apache License, Version 2.0 (the "License");
%%%   you may not use this file except in compliance with the License.
%%%   You may obtain a copy of the License at
%%%
%%%       http://www.apache.org/licenses/LICENSE-2.0
%%%
%%%   Unless required by applicable law or agreed to in writing, software
%%%   distributed under the License is distributed on an "AS IS" BASIS,
%%%   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
%%%   See the License for the specific language governing permissions and
%%%   limitations under the License.
%%%
-ifndef(KPRO_HRL_).
-define(KPRO_HRL_, true).

-record(kpro_req,
        { tag :: kpro:req_tag()
        , vsn :: kpro:vsn()
        , no_ack = false :: boolean() %% set to true for fire-n-forget requests
        , corr_id :: kpro:corr_id()
        , msg :: binary() | kpro:struct()
        }).

-record(kpro_rsp,
        { tag :: kpro:rsp_tag()
        , vsn :: kpro:vsn()
        , corr_id :: kpro:corr_id()
        , msg :: binary() | kpro:struct()
        }).

-endif.

%%%_* Emacs ====================================================================
%%% Local Variables:
%%% allout-layout: t
%%% erlang-indent-level: 2
%%% End:
