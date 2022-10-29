.class Lcom/localytics/android/PlayServicesUtils;
.super Ljava/lang/Object;
.source "PlayServicesUtils.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isAdvertisingAvailable()Z
    .registers 1

    .prologue
    .line 22
    :try_start_0
    const-string/jumbo v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_8

    .line 23
    const/4 v0, 0x1

    .line 27
    :goto_7
    return v0

    :catch_8
    move-exception v0

    const/4 v0, 0x0

    goto :goto_7
.end method

.method static isLocationAvailable()Z
    .registers 1

    .prologue
    .line 9
    :try_start_0
    const-string/jumbo v0, "com.google.android.gms.location.LocationServices"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_8

    .line 10
    const/4 v0, 0x1

    .line 14
    :goto_7
    return v0

    :catch_8
    move-exception v0

    const/4 v0, 0x0

    goto :goto_7
.end method
