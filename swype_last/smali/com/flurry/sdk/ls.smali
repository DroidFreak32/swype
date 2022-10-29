.class public Lcom/flurry/sdk/ls;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const-class v0, Lcom/flurry/sdk/ls;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/ls;->a:Ljava/lang/String;

    .line 35
    const-string/jumbo v0, "com.google.android.gms.common.GoogleApiAvailability"

    sput-object v0, Lcom/flurry/sdk/ls;->b:Ljava/lang/String;

    .line 37
    const-string/jumbo v0, "com.google.android.gms.common.GooglePlayServicesUtil"

    sput-object v0, Lcom/flurry/sdk/ls;->c:Ljava/lang/String;

    .line 39
    const-string/jumbo v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    sput-object v0, Lcom/flurry/sdk/ls;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Object;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 140
    :try_start_0
    const-string/jumbo v0, "getId"

    invoke-static {p0, v0}, Lcom/flurry/sdk/lu;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/flurry/sdk/lv$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/lv$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    .line 146
    :goto_d
    return-object v0

    .line 141
    :catch_e
    move-exception v0

    .line 142
    sget-object v1, Lcom/flurry/sdk/ls;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "GOOGLE PLAY SERVICES ERROR: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    sget-object v0, Lcom/flurry/sdk/ls;->a:Ljava/lang/String;

    const-string/jumbo v1, "There is a problem with the Google Play Services library, which is required for Android Advertising ID support. The Google Play Services library should be integrated in any app shipping in the Play Store that uses analytics or advertising."

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 5

    .prologue
    .line 54
    :try_start_0
    sget-object v0, Lcom/flurry/sdk/ls;->b:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/flurry/sdk/ls;->a(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result v0

    .line 65
    :goto_6
    return v0

    :catch_7
    move-exception v0

    .line 59
    :try_start_8
    sget-object v0, Lcom/flurry/sdk/ls;->c:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/flurry/sdk/ls;->a(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_f

    move-result v0

    goto :goto_6

    .line 60
    :catch_f
    move-exception v0

    .line 61
    sget-object v1, Lcom/flurry/sdk/ls;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "GOOGLE PLAY SERVICES EXCEPTION: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    sget-object v0, Lcom/flurry/sdk/ls;->a:Ljava/lang/String;

    const-string/jumbo v1, "There is a problem with the Google Play Services library, which is required for Android Advertising ID support. The Google Play Services library should be integrated in any app shipping in the Play Store that uses analytics or advertising."

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 83
    const/4 v0, 0x0

    const-string/jumbo v1, "isGooglePlayServicesAvailable"

    .line 84
    invoke-static {v0, v1}, Lcom/flurry/sdk/lu;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/flurry/sdk/lv$a;

    move-result-object v0

    .line 85
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/lv$a;->a(Ljava/lang/Class;)Lcom/flurry/sdk/lv$a;

    move-result-object v0

    const-class v1, Landroid/content/Context;

    .line 86
    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/lv$a;->a(Ljava/lang/Class;Ljava/lang/Object;)Lcom/flurry/sdk/lv$a;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lcom/flurry/sdk/lv$a;->a()Ljava/lang/Object;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_26

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_26

    const/4 v0, 0x1

    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method public static b(Landroid/content/Context;)Lcom/flurry/sdk/jo;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 105
    if-nez p0, :cond_4

    .line 125
    :goto_3
    return-object v0

    .line 111
    :cond_4
    const/4 v1, 0x0

    :try_start_5
    const-string/jumbo v2, "getAdvertisingIdInfo"

    .line 112
    invoke-static {v1, v2}, Lcom/flurry/sdk/lu;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/flurry/sdk/lv$a;

    move-result-object v1

    sget-object v2, Lcom/flurry/sdk/ls;->d:Ljava/lang/String;

    .line 113
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/lv$a;->a(Ljava/lang/Class;)Lcom/flurry/sdk/lv$a;

    move-result-object v1

    const-class v2, Landroid/content/Context;

    .line 114
    invoke-virtual {v1, v2, p0}, Lcom/flurry/sdk/lv$a;->a(Ljava/lang/Class;Ljava/lang/Object;)Lcom/flurry/sdk/lv$a;

    move-result-object v1

    .line 116
    invoke-virtual {v1}, Lcom/flurry/sdk/lv$a;->a()Ljava/lang/Object;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1f} :catch_2e

    move-result-object v1

    .line 125
    new-instance v0, Lcom/flurry/sdk/jo;

    invoke-static {v1}, Lcom/flurry/sdk/ls;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/flurry/sdk/ls;->b(Ljava/lang/Object;)Z

    move-result v1

    invoke-direct {v0, v2, v1}, Lcom/flurry/sdk/jo;-><init>(Ljava/lang/String;Z)V

    goto :goto_3

    .line 117
    :catch_2e
    move-exception v1

    .line 118
    sget-object v2, Lcom/flurry/sdk/ls;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "GOOGLE PLAY SERVICES ERROR: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    sget-object v1, Lcom/flurry/sdk/ls;->a:Ljava/lang/String;

    const-string/jumbo v2, "There is a problem with the Google Play Services library, which is required for Android Advertising ID support. The Google Play Services library should be integrated in any app shipping in the Play Store that uses analytics or advertising."

    invoke-static {v1, v2}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private static b(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 162
    :try_start_1
    const-string/jumbo v0, "isLimitAdTrackingEnabled"

    invoke-static {p0, v0}, Lcom/flurry/sdk/lu;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/flurry/sdk/lv$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/lv$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 163
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_17

    move-result v0

    .line 169
    :goto_14
    return v0

    :cond_15
    move v0, v1

    .line 163
    goto :goto_14

    .line 164
    :catch_17
    move-exception v0

    .line 165
    sget-object v2, Lcom/flurry/sdk/ls;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "GOOGLE PLAY SERVICES ERROR: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    sget-object v0, Lcom/flurry/sdk/ls;->a:Ljava/lang/String;

    const-string/jumbo v2, "There is a problem with the Google Play Services library, which is required for Android Advertising ID support. The Google Play Services library should be integrated in any app shipping in the Play Store that uses analytics or advertising."

    invoke-static {v0, v2}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 169
    goto :goto_14
.end method
