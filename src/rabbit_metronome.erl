%% This Source Code Form is subject to the terms of the Mozilla Public
%% License, v. 2.0. If a copy of the MPL was not distributed with this
%% file, You can obtain one at https://mozilla.org/MPL/2.0/.
%%
%% Copyright (c) 2007-2020 VMware, Inc. or its affiliates.
%% You may use this code for any purpose.

-module(rabbit_metronome).

-behaviour(application).

-export([start/2, stop/1]).

start(normal, []) ->
    rabbit_metronome_sup:start_link().

stop(_State) ->
    ok.
