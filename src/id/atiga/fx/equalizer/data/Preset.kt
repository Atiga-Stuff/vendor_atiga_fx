/*
 * Copyright (C) 2024 Paranoid Android
 *
 * SPDX-License-Identifier: Apache-2.0
 */

package id.atiga.fx.equalizer.data

data class Preset(
    var name: String,
    val bandGains: List<BandGain>,
    var isUserDefined: Boolean = false,
    var isMutated: Boolean = false
)
