.class public Lcom/nuance/swype/input/settings/SettingsV11;
.super Landroid/preference/PreferenceActivity;
.source "SettingsV11.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/settings/SettingsV11$KeyUpListener;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static isTablet_720DP:Z

.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;

.field private static mFragmentCount:I


# instance fields
.field private localyticsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private onKeyUpListener:Lcom/nuance/swype/input/settings/SettingsV11$KeyUpListener;

.field private updateCallback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateCallback;

.field private visitedMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    const-class v0, Lcom/nuance/swype/input/settings/SettingsV11;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/nuance/swype/input/settings/SettingsV11;->$assertionsDisabled:Z

    .line 42
    const-string v0, "SettingsV11"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/settings/SettingsV11;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 54
    sput v1, Lcom/nuance/swype/input/settings/SettingsV11;->mFragmentCount:I

    return-void

    :cond_0
    move v0, v1

    .line 40
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->localyticsMap:Ljava/util/Map;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->visitedMap:Ljava/util/Map;

    .line 46
    return-void
.end method

.method private fixupIntent(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 151
    .local v1, "component":Landroid/content/ComponentName;
    if-nez v1, :cond_2

    .line 152
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "className":Ljava/lang/String;
    sget-boolean v3, Lcom/nuance/swype/input/settings/SettingsV11;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez v0, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 154
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    .end local v0    # "className":Ljava/lang/String;
    :cond_1
    return-void

    .line 155
    :cond_2
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 156
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private getLongPressDelay(J)Ljava/lang/String;
    .locals 13
    .param p1, "time"    # J

    .prologue
    const-wide/16 v10, 0x1f4

    const-wide/16 v8, 0xc8

    const-wide/16 v6, 0x64

    const-wide/16 v4, 0x14

    const-wide/16 v2, 0xa

    .line 210
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    cmp-long v0, p1, v2

    if-gtz v0, :cond_0

    .line 211
    const-string v0, "0-10ms"

    .line 225
    :goto_0
    return-object v0

    .line 212
    :cond_0
    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    cmp-long v0, p1, v4

    if-gtz v0, :cond_1

    .line 213
    const-string v0, "10-20ms"

    goto :goto_0

    .line 214
    :cond_1
    cmp-long v0, p1, v4

    if-lez v0, :cond_2

    cmp-long v0, p1, v6

    if-gtz v0, :cond_2

    .line 215
    const-string v0, "20-100ms"

    goto :goto_0

    .line 216
    :cond_2
    cmp-long v0, p1, v6

    if-lez v0, :cond_3

    cmp-long v0, p1, v8

    if-gtz v0, :cond_3

    .line 217
    const-string v0, "100-200ms"

    goto :goto_0

    .line 218
    :cond_3
    cmp-long v0, p1, v8

    if-lez v0, :cond_4

    cmp-long v0, p1, v10

    if-gtz v0, :cond_4

    .line 219
    const-string v0, "200-500ms"

    goto :goto_0

    .line 220
    :cond_4
    cmp-long v0, p1, v10

    if-lez v0, :cond_5

    const-wide/16 v0, 0x3e8

    cmp-long v0, p1, v0

    if-gtz v0, :cond_5

    .line 221
    const-string v0, "500-1000ms"

    goto :goto_0

    .line 222
    :cond_5
    const-wide/16 v0, 0x3e8

    cmp-long v0, p1, v0

    if-lez v0, :cond_6

    .line 223
    const-string v0, "1000ms +"

    goto :goto_0

    .line 225
    :cond_6
    const-string v0, "0-10ms"

    goto :goto_0
.end method

.method private shouldReleaseImageCache()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 312
    sget-object v0, Lcom/nuance/swype/input/settings/SettingsV11;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "shouldReleaseImageCache...SettingsV11.mFragmentCount( "

    sget v2, Lcom/nuance/swype/input/settings/SettingsV11;->mFragmentCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, " )...getFragmentManager().getBackStackEntryCount() ( "

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, " )"

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 315
    sget v0, Lcom/nuance/swype/input/settings/SettingsV11;->mFragmentCount:I

    if-gt v0, v6, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 317
    :cond_0
    sget-object v0, Lcom/nuance/swype/input/settings/SettingsV11;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "shouldReleaseImageCache...false"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 318
    const/4 v0, 0x0

    .line 321
    :goto_0
    return v0

    .line 320
    :cond_1
    sget-object v0, Lcom/nuance/swype/input/settings/SettingsV11;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "shouldReleaseImageCache...true"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    move v0, v6

    .line 321
    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 8

    .prologue
    const/high16 v7, 0x42c80000    # 100.0f

    .line 230
    sget-object v2, Lcom/nuance/swype/input/settings/SettingsV11;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v3, "onBackPressed..."

    invoke-virtual {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 231
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    .line 232
    .local v0, "usrPrefs":Lcom/nuance/swype/input/UserPreferences;
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getRecordedEntryPoints()Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, "visited":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/android/compat/LocalyticsCompat;->isLocalyticsClassExistingAndContributionaAllowed(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 235
    invoke-static {}, Lcom/nuance/android/compat/LocalyticsCompat;->open()V

    .line 236
    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsV11;->localyticsMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 237
    iget-object v3, p0, Lcom/nuance/swype/input/settings/SettingsV11;->localyticsMap:Ljava/util/Map;

    const-string v4, "vibration"

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->isVibrateOn()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "on"

    :goto_0
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iget-object v3, p0, Lcom/nuance/swype/input/settings/SettingsV11;->localyticsMap:Ljava/util/Map;

    const-string v4, "sound on keypress"

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->isKeySoundOn()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "on"

    :goto_1
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iget-object v3, p0, Lcom/nuance/swype/input/settings/SettingsV11;->localyticsMap:Ljava/util/Map;

    const-string v4, "pop-up on keypress"

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getShowPressDownPreview()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "on"

    :goto_2
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsV11;->localyticsMap:Ljava/util/Map;

    const-string v3, "long-press delay"

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getLongPressDelay()I

    move-result v4

    int-to-long v4, v4

    invoke-direct {p0, v4, v5}, Lcom/nuance/swype/input/settings/SettingsV11;->getLongPressDelay(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iget-object v3, p0, Lcom/nuance/swype/input/settings/SettingsV11;->localyticsMap:Ljava/util/Map;

    const-string v4, "show complete trace"

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getShowCompleteTrace()Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "on"

    :goto_3
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    iget-object v3, p0, Lcom/nuance/swype/input/settings/SettingsV11;->localyticsMap:Ljava/util/Map;

    const-string v4, "auto-correction"

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getAutoCorrection()Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "on"

    :goto_4
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    iget-object v3, p0, Lcom/nuance/swype/input/settings/SettingsV11;->localyticsMap:Ljava/util/Map;

    const-string v4, "auto-capitalization"

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getAutoCap()Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "on"

    :goto_5
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    iget-object v3, p0, Lcom/nuance/swype/input/settings/SettingsV11;->localyticsMap:Ljava/util/Map;

    const-string v4, "auto-spacing"

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getAutoSpace()Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "on"

    :goto_6
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    iget-object v3, p0, Lcom/nuance/swype/input/settings/SettingsV11;->localyticsMap:Ljava/util/Map;

    const-string v4, "next word prediction"

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->isNextWordPredictionEnabled()Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "on"

    :goto_7
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    iget-object v3, p0, Lcom/nuance/swype/input/settings/SettingsV11;->localyticsMap:Ljava/util/Map;

    const-string v4, "import recent contacts"

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getAutoImportContacts()Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "on"

    :goto_8
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget-object v3, p0, Lcom/nuance/swype/input/settings/SettingsV11;->localyticsMap:Ljava/util/Map;

    const-string v4, "show voice key"

    const-string v2, "show_voice_key"

    sget v5, Lcom/nuance/swype/input/R$bool;->show_voice_key_default:I

    invoke-virtual {v0, v5}, Lcom/nuance/swype/input/UserPreferences;->getDefaultBoolean(I)Z

    move-result v5

    invoke-virtual {v0, v2, v5}, Lcom/nuance/swype/input/UserPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "on"

    :goto_9
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    iget-object v3, p0, Lcom/nuance/swype/input/settings/SettingsV11;->localyticsMap:Ljava/util/Map;

    const-string v4, "detect end of speech"

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->isEndOfSpeechDetectionEnabled()Z

    move-result v2

    if-eqz v2, :cond_10

    const-string v2, "on"

    :goto_a
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    iget-object v3, p0, Lcom/nuance/swype/input/settings/SettingsV11;->localyticsMap:Ljava/util/Map;

    const-string v4, "enable handwriting"

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->isHandwritingEnabled()Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v2, "on"

    :goto_b
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsV11;->localyticsMap:Ljava/util/Map;

    const-string v3, "keyboard height portrait"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardScalePortrait()F

    move-result v5

    mul-float/2addr v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsV11;->localyticsMap:Ljava/util/Map;

    const-string v3, "keyboard height landscape"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardScaleLandscape()F

    move-result v5

    mul-float/2addr v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsV11;->localyticsMap:Ljava/util/Map;

    const-string v3, "font size"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Candidates_Size"

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v0, v5, v6}, Lcom/nuance/swype/input/UserPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v5

    mul-float/2addr v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    iget-object v3, p0, Lcom/nuance/swype/input/settings/SettingsV11;->localyticsMap:Ljava/util/Map;

    const-string v4, "dictionary behavior"

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getAskBeforeAdd()Z

    move-result v2

    if-eqz v2, :cond_12

    const-string v2, "manual add"

    :goto_c
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    iget-object v3, p0, Lcom/nuance/swype/input/settings/SettingsV11;->localyticsMap:Ljava/util/Map;

    const-string v4, "use bold font on key"

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardFontBold()Z

    move-result v2

    if-eqz v2, :cond_13

    const-string v2, "bold"

    :goto_d
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsV11;->localyticsMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 275
    const-string v2, "Settings Summary"

    iget-object v3, p0, Lcom/nuance/swype/input/settings/SettingsV11;->localyticsMap:Ljava/util/Map;

    invoke-static {v2, v3}, Lcom/nuance/android/compat/LocalyticsCompat;->tagEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 277
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsV11;->visitedMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 279
    if-eqz v1, :cond_4

    .line 280
    const-string v2, "swypekey"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 281
    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsV11;->visitedMap:Ljava/util/Map;

    const-string v3, "entry point"

    const-string v4, "swype key"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    :cond_1
    const-string v2, "functionbar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 285
    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsV11;->visitedMap:Ljava/util/Map;

    const-string v3, "entry point"

    const-string v4, "function bar"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    :cond_2
    const-string v2, "system"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 289
    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsV11;->visitedMap:Ljava/util/Map;

    const-string v3, "entry point"

    const-string v4, "system & app tray"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->resetRecordedEntryPoints()V

    .line 293
    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsV11;->visitedMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 294
    const-string v2, "Settings Closed"

    iget-object v3, p0, Lcom/nuance/swype/input/settings/SettingsV11;->visitedMap:Ljava/util/Map;

    invoke-static {v2, v3}, Lcom/nuance/android/compat/LocalyticsCompat;->tagEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 298
    :cond_4
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/android/compat/LocalyticsCompat;->upload(Landroid/content/Context;)V

    .line 300
    :cond_5
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V

    .line 301
    return-void

    .line 237
    :cond_6
    const-string v2, "off"

    goto/16 :goto_0

    .line 239
    :cond_7
    const-string v2, "off"

    goto/16 :goto_1

    .line 241
    :cond_8
    const-string v2, "off"

    goto/16 :goto_2

    .line 245
    :cond_9
    const-string v2, "off"

    goto/16 :goto_3

    .line 247
    :cond_a
    const-string v2, "off"

    goto/16 :goto_4

    .line 249
    :cond_b
    const-string v2, "off"

    goto/16 :goto_5

    .line 251
    :cond_c
    const-string v2, "off"

    goto/16 :goto_6

    .line 253
    :cond_d
    const-string v2, "off"

    goto/16 :goto_7

    .line 255
    :cond_e
    const-string v2, "off"

    goto/16 :goto_8

    .line 257
    :cond_f
    const-string v2, "off"

    goto/16 :goto_9

    .line 260
    :cond_10
    const-string v2, "off"

    goto/16 :goto_a

    .line 262
    :cond_11
    const-string v2, "off"

    goto/16 :goto_b

    .line 270
    :cond_12
    const-string v2, "automatic add"

    goto/16 :goto_c

    .line 272
    :cond_13
    const-string v2, "normal"

    goto/16 :goto_d
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    sget v6, Lcom/nuance/swype/input/R$attr;->settingsHeaders:I

    sget v7, Lcom/nuance/swype/input/R$xml;->settings_headers:I

    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    aput v6, v8, v9

    invoke-virtual {p0, v8}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v6

    invoke-static {v6, v7}, Landroid/support/v4/app/ActivityCompatHoneycomb;->getResId(Landroid/content/res/TypedArray;I)I

    move-result v5

    .line 96
    .local v5, "settingsHeadersResId":I
    invoke-virtual {p0, v5, p1}, Lcom/nuance/swype/input/settings/SettingsV11;->loadHeadersFromResource(ILjava/util/List;)V

    .line 98
    invoke-static {p0}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v1

    .line 101
    .local v1, "curLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "index":I
    :cond_0
    :goto_0
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_c

    .line 102
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceActivity$Header;

    .line 103
    .local v2, "header":Landroid/preference/PreferenceActivity$Header;
    iget-object v6, v2, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-eqz v6, :cond_1

    .line 104
    iget-object v6, v2, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-direct {p0, v6}, Lcom/nuance/swype/input/settings/SettingsV11;->fixupIntent(Landroid/content/Intent;)V

    .line 106
    :cond_1
    sget-boolean v6, Lcom/nuance/swype/input/ThemeManager;->isInAppPurchaseEnabled:Z

    if-eqz v6, :cond_5

    .line 107
    iget-wide v6, v2, Landroid/preference/PreferenceActivity$Header;->id:J

    sget v8, Lcom/nuance/swype/input/R$id;->swype_themes_activity_header:I

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    iget-wide v6, v2, Landroid/preference/PreferenceActivity$Header;->id:J

    sget v8, Lcom/nuance/swype/input/R$id;->swype_themes_prefs_header:I

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    .line 109
    :cond_2
    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 124
    :cond_3
    :goto_1
    iget-wide v6, v2, Landroid/preference/PreferenceActivity$Header;->id:J

    sget v8, Lcom/nuance/swype/input/R$id;->chinese_prefs_header:I

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_4

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v6

    if-nez v6, :cond_4

    .line 125
    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 127
    :cond_4
    iget-wide v6, v2, Landroid/preference/PreferenceActivity$Header;->id:J

    sget v8, Lcom/nuance/swype/input/R$id;->updates_header:I

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 128
    invoke-static {p0}, Lcom/nuance/swype/input/BuildInfo;->from(Landroid/content/Context;)Lcom/nuance/swype/input/BuildInfo;

    move-result-object v0

    .line 130
    .local v0, "buildInfo":Lcom/nuance/swype/input/BuildInfo;
    invoke-static {p0}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/connect/Connect;->isStarted()Z

    move-result v6

    if-nez v6, :cond_9

    .line 131
    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 112
    .end local v0    # "buildInfo":Lcom/nuance/swype/input/BuildInfo;
    :cond_5
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/nuance/swype/input/ThemeManager;->from(Landroid/content/Context;)Lcom/nuance/swype/input/ThemeManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/ThemeManager;->getSwypeThemeCount()I

    move-result v6

    const/4 v7, 0x2

    if-ge v6, v7, :cond_7

    .line 113
    iget-wide v6, v2, Landroid/preference/PreferenceActivity$Header;->id:J

    sget v8, Lcom/nuance/swype/input/R$id;->themes_category_header:I

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_6

    iget-wide v6, v2, Landroid/preference/PreferenceActivity$Header;->id:J

    sget v8, Lcom/nuance/swype/input/R$id;->swype_themes_activity_header:I

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    .line 115
    :cond_6
    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 118
    :cond_7
    iget-wide v6, v2, Landroid/preference/PreferenceActivity$Header;->id:J

    sget v8, Lcom/nuance/swype/input/R$id;->themes_category_header:I

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_8

    iget-wide v6, v2, Landroid/preference/PreferenceActivity$Header;->id:J

    sget v8, Lcom/nuance/swype/input/R$id;->swype_themes_prefs_header:I

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    .line 120
    :cond_8
    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 132
    .restart local v0    # "buildInfo":Lcom/nuance/swype/input/BuildInfo;
    :cond_9
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/nuance/swype/input/BuildInfo;->isDTCbuild()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 134
    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 136
    :cond_a
    invoke-static {p0}, Lcom/nuance/swype/connect/SDKUpdateManager;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/SDKUpdateManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/connect/SDKUpdateManager;->isAvailable()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 137
    sget v6, Lcom/nuance/swype/input/R$drawable;->ic_settings_updates_plus:I

    .line 138
    sget v4, Lcom/nuance/swype/input/R$drawable;->ic_settings_updates_1:I

    .line 139
    .local v4, "resId":I
    iput v4, v2, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    goto/16 :goto_0

    .line 141
    .end local v4    # "resId":I
    :cond_b
    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 146
    .end local v0    # "buildInfo":Lcom/nuance/swype/input/BuildInfo;
    .end local v2    # "header":Landroid/preference/PreferenceActivity$Header;
    :cond_c
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/4 v6, -0x1

    const/4 v4, 0x1

    .line 58
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 60
    .local v1, "config":Landroid/content/res/Configuration;
    invoke-static {v1}, Lcom/nuance/android/compat/ConfigurationCompat;->getSmallestScreenWidthDp(Landroid/content/res/Configuration;)I

    move-result v2

    .line 61
    .local v2, "swDp":I
    if-eqz v2, :cond_3

    .line 62
    const/16 v5, 0x2d0

    if-lt v2, v5, :cond_0

    move v3, v4

    :cond_0
    sput-boolean v3, Lcom/nuance/swype/input/settings/SettingsV11;->isTablet_720DP:Z

    .line 66
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/view/Window;->setLayout(II)V

    .line 68
    invoke-static {p0}, Lcom/nuance/swype/input/BuildInfo;->from(Landroid/content/Context;)Lcom/nuance/swype/input/BuildInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/BuildInfo;->getBuildDate()J

    move-result-wide v6

    invoke-static {p0, v6, v7}, Lcom/nuance/swype/input/DatabaseConfig;->refreshDatabaseConfig(Landroid/content/Context;J)V

    .line 69
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/android/compat/LocalyticsCompat;->isLocalyticsClassExistingAndContributionaAllowed(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 70
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/input/BuildInfo;->from(Landroid/content/Context;)Lcom/nuance/swype/input/BuildInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/BuildInfo;->getSwypePreferenceAppKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/nuance/android/compat/LocalyticsCompat;->createLocalyticsSession(Landroid/content/Context;Ljava/lang/String;)Lcom/nuance/swype/stats/LocalyticsUtils;

    .line 72
    invoke-static {}, Lcom/nuance/android/compat/LocalyticsCompat;->open()V

    .line 74
    :cond_1
    sget v3, Lcom/nuance/swype/input/settings/SettingsV11;->mFragmentCount:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/nuance/swype/input/settings/SettingsV11;->mFragmentCount:I

    .line 76
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 77
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_2

    .line 78
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 79
    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 81
    :cond_2
    return-void

    .line 64
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_3
    iget v5, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_4

    move v3, v4

    :cond_4
    sput-boolean v3, Lcom/nuance/swype/input/settings/SettingsV11;->isTablet_720DP:Z

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 305
    sget v0, Lcom/nuance/swype/input/settings/SettingsV11;->mFragmentCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/nuance/swype/input/settings/SettingsV11;->mFragmentCount:I

    .line 306
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 307
    invoke-static {}, Lcom/nuance/swype/widget/LoadingImageView;->recycleBitmaps()V

    .line 308
    sget-object v0, Lcom/nuance/swype/input/settings/SettingsV11;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "onDestroy..."

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 309
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->onKeyUpListener:Lcom/nuance/swype/input/settings/SettingsV11$KeyUpListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->onKeyUpListener:Lcom/nuance/swype/input/settings/SettingsV11$KeyUpListener;

    invoke-interface {v0, p1, p2}, Lcom/nuance/swype/input/settings/SettingsV11$KeyUpListener;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    const/4 v0, 0x1

    .line 206
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 327
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 328
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->onBackPressed()V

    .line 329
    const/4 v0, 0x1

    .line 331
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->updateCallback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateCallback;

    if-eqz v0, :cond_0

    .line 184
    invoke-static {p0}, Lcom/nuance/swype/connect/SDKUpdateManager;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/SDKUpdateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/settings/SettingsV11;->updateCallback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateCallback;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/SDKUpdateManager;->unregisterCallback(Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateCallback;)V

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->updateCallback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateCallback;

    .line 187
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 189
    :try_start_0
    sget v0, Lcom/nuance/swype/input/R$anim;->fade_in:I

    sget v1, Lcom/nuance/swype/input/R$anim;->fade_out:I

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/settings/SettingsV11;->overridePendingTransition(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 162
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 163
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->invalidateHeaders()V

    .line 164
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->updateCallback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateCallback;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/nuance/swype/connect/SDKUpdateManager;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/SDKUpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/SDKUpdateManager;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Lcom/nuance/swype/input/settings/SettingsV11$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/SettingsV11$1;-><init>(Lcom/nuance/swype/input/settings/SettingsV11;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->updateCallback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateCallback;

    .line 171
    invoke-static {p0}, Lcom/nuance/swype/connect/SDKUpdateManager;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/SDKUpdateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/settings/SettingsV11;->updateCallback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateCallback;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/SDKUpdateManager;->registerCallback(Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateCallback;)V

    .line 174
    :cond_0
    :try_start_0
    sget v0, Lcom/nuance/swype/input/R$anim;->fade_in:I

    sget v1, Lcom/nuance/swype/input/R$anim;->fade_out:I

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/settings/SettingsV11;->overridePendingTransition(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setOnKeyUpListener(Lcom/nuance/swype/input/settings/SettingsV11$KeyUpListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/nuance/swype/input/settings/SettingsV11$KeyUpListener;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/nuance/swype/input/settings/SettingsV11;->onKeyUpListener:Lcom/nuance/swype/input/settings/SettingsV11$KeyUpListener;

    .line 198
    return-void
.end method
