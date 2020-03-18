#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
@author: Benjamin Zhao
"""

import pandas as pd
from user_voices import VoiceUserPopulation


if __name__ == "__main__":
    print("Run")
    voice_loc = "./voice_embeddings.csv"

    n_feat = 1024

    n_users = 75

    user_voices = VoiceUserPopulation(voice_loc, n_feat, n_users)

    print(user_voices)

    print([u_data.get_user_data() for u, u_data in user_voices.users.items() if u == 9017])
    user_voices.normalize_data()
    print([u_data.get_user_data() for u, u_data in user_voices.users.items() if u == 9017])

    a = pd.DataFrame(user_voices.scaler.transform(user_voices.data))
    a['user'] = user_voices.labels.values

    a.to_csv('./voice_data_dump.csv')
