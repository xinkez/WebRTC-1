/*
 *  Copyright (c) 2011 The WebRTC project authors. All Rights Reserved.
 *
 *  Use of this source code is governed by a BSD-style license
 *  that can be found in the LICENSE file in the root of the source
 *  tree. An additional intellectual property rights grant can be found
 *  in the file PATENTS.  All contributing project authors may
 *  be found in the AUTHORS file in the root of the source tree.
 */

#ifndef WEBRTC_VOICE_ENGINE_VOE_NETEQ_STATS_H
#define WEBRTC_VOICE_ENGINE_VOE_NETEQ_STATS_H

#include "common_types.h"

namespace webrtc {

class VoiceEngine;

class WEBRTC_DLLEXPORT VoENetEqStats
{
public:
    // Factory for the VoENetEqStats sub-API. Increases an internal
    // reference counter if successful. Returns NULL if the API is not
    // supported or if construction fails.
    static VoENetEqStats* GetInterface(VoiceEngine* voiceEngine);

    // Releases the VoENetEqStats sub-API and decreases an internal
    // reference counter. Returns the new reference count. This value should
    // be zero for all sub-API:s before the VoiceEngine object can be safely
    // deleted.
    virtual int Release() = 0;

    // Get the "in-call" statistics from NetEQ.
    // The statistics are reset after the query.
    virtual int GetNetworkStatistics(int channel, NetworkStatistics& stats) = 0;

    // Get the "post-call" jitter statistics from NetEQ.
    // The statistics are not reset by the query. Use the function
    // ResetJitterStatistics() to reset.
    virtual int GetJitterStatistics(int channel, JitterStatistics& stats) = 0;

    // Get the optimal buffer size calculated for the current network
    // conditions.
    virtual int GetPreferredBufferSize(
        int channel, unsigned short& preferredBufferSize) = 0;

    // Reset "post-call" jitter statistics.
    virtual int ResetJitterStatistics(int channel) = 0;

protected:
    VoENetEqStats() {}
    virtual ~VoENetEqStats() {}
};

}   // namespace webrtc

#endif    // #ifndef WEBRTC_VOICE_ENGINE_VOE_NETEQ_STATS_H
