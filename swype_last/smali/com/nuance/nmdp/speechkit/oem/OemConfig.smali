.class public Lcom/nuance/nmdp/speechkit/oem/OemConfig;
.super Ljava/lang/Object;
.source "OemConfig.java"


# instance fields
.field private final _appContext:Landroid/content/Context;

.field private _emulator:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 4
    .param p1, "appContext"    # Ljava/lang/Object;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    check-cast p1, Landroid/content/Context;

    .end local p1    # "appContext":Ljava/lang/Object;
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/oem/OemConfig;->_appContext:Landroid/content/Context;

    .line 26
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string/jumbo v1, "sdk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/oem/OemConfig;->_emulator:Z

    .line 27
    return-void
.end method


# virtual methods
.method public appName()[B
    .registers 5

    .prologue
    .line 122
    :try_start_0
    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/oem/OemConfig;->_appContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 123
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    if-eqz v2, :cond_14

    .line 125
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 137
    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_13
    return-object v2

    .line 126
    .restart local v0    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_14
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_33

    .line 128
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, "parts":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_33

    .line 131
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v1, v2

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_30
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_30} :catch_32

    move-result-object v2

    goto :goto_13

    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "parts":[Ljava/lang/String;
    :catch_32
    move-exception v2

    .line 137
    :cond_33
    const/4 v2, 0x0

    new-array v2, v2, [B

    goto :goto_13
.end method

.method public carrier()Ljava/lang/String;
    .registers 4

    .prologue
    .line 31
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/oem/OemConfig;->_appContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 32
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "carrier":Ljava/lang/String;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1a

    .line 35
    :cond_17
    const-string/jumbo v0, "carrier"

    .line 37
    :cond_1a
    return-object v0
.end method

.method public defaultApn()Ljava/lang/String;
    .registers 2

    .prologue
    .line 166
    const/4 v0, 0x0

    return-object v0
.end method

.method public defaultLanguage()Ljava/lang/String;
    .registers 4

    .prologue
    .line 42
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 43
    .local v0, "l":Ljava/util/Locale;
    if-eqz v0, :cond_13

    .line 45
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "lang":Ljava/lang/String;
    if-eqz v1, :cond_13

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_13

    .line 51
    .end local v1    # "lang":Ljava/lang/String;
    :goto_12
    return-object v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public locale()Ljava/lang/String;
    .registers 4

    .prologue
    .line 66
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 67
    .local v1, "l":Ljava/util/Locale;
    if-eqz v1, :cond_13

    .line 69
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "c":Ljava/lang/String;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_13

    .line 75
    .end local v0    # "c":Ljava/lang/String;
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public milliseconds()I
    .registers 3

    .prologue
    .line 161
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public model()Ljava/lang/String;
    .registers 2

    .prologue
    .line 56
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public networkType()Ljava/lang/String;
    .registers 5

    .prologue
    .line 80
    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/oem/OemConfig;->_appContext:Landroid/content/Context;

    const-string/jumbo v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 81
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 82
    .local v1, "ni":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_22

    .line 84
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_22

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_22

    .line 87
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    .line 90
    .end local v0    # "name":Ljava/lang/String;
    :goto_21
    return-object v2

    :cond_22
    const/4 v2, 0x0

    goto :goto_21
.end method

.method public os()Ljava/lang/String;
    .registers 2

    .prologue
    .line 61
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public packageName()[B
    .registers 4

    .prologue
    .line 143
    :try_start_0
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/oem/OemConfig;->_appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 144
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_15

    .line 146
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_12
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_12} :catch_14

    move-result-object v1

    .line 151
    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_13
    return-object v1

    :catch_14
    move-exception v1

    :cond_15
    const/4 v1, 0x0

    new-array v1, v1, [B

    goto :goto_13
.end method

.method public playerCodec()Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;
    .registers 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/oem/OemConfig;->_appContext:Landroid/content/Context;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 114
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->SPEEX_8K:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    :goto_13
    return-object v0

    :cond_14
    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->SPEEX_16K:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    goto :goto_13
.end method

.method public recorderCodec()Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;
    .registers 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/oem/OemConfig;->_appContext:Landroid/content/Context;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 103
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v0

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/oem/OemConfig;->_emulator:Z

    if-eqz v0, :cond_18

    .line 105
    :cond_15
    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->SPEEX_8K:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    .line 108
    :goto_17
    return-object v0

    :cond_18
    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;->SPEEX_16K:Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$Codec;

    goto :goto_17
.end method

.method public seconds()I
    .registers 3

    .prologue
    .line 156
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public uid()Ljava/lang/String;
    .registers 3

    .prologue
    .line 95
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/oem/OemConfig;->_appContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/nuance/nmsp/client/sdk/components/general/ResourceUtil;->getUniqueID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "uid":Ljava/lang/String;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_f

    const/4 v0, 0x0

    .line 97
    :cond_f
    return-object v0
.end method
