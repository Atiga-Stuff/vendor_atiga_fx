/*
 * Copyright (C) 2023-24 Paranoid Android
 *
 * SPDX-License-Identifier: Apache-2.0
 */

package id.atiga.fx

import android.os.Bundle
import id.atiga.fx.preference.DolbySettingsFragment
import com.android.settingslib.collapsingtoolbar.CollapsingToolbarBaseActivity
import com.android.settingslib.widget.R

private const val TAG = "AigaActivity"

class DolbyActivity : CollapsingToolbarBaseActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        fragmentManager.beginTransaction()
                .replace(R.id.content_frame, DolbySettingsFragment(), TAG)
                .commit()
    }
}
