.class synthetic Lcom/localytics/android/LocationHandler$15;
.super Ljava/lang/Object;
.source "LocationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/LocationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$localytics$android$Region$Event:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 956
    invoke-static {}, Lcom/localytics/android/Region$Event;->values()[Lcom/localytics/android/Region$Event;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/localytics/android/LocationHandler$15;->$SwitchMap$com$localytics$android$Region$Event:[I

    :try_start_0
    sget-object v0, Lcom/localytics/android/LocationHandler$15;->$SwitchMap$com$localytics$android$Region$Event:[I

    sget-object v1, Lcom/localytics/android/Region$Event;->ENTER:Lcom/localytics/android/Region$Event;

    invoke-virtual {v1}, Lcom/localytics/android/Region$Event;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/localytics/android/LocationHandler$15;->$SwitchMap$com$localytics$android$Region$Event:[I

    sget-object v1, Lcom/localytics/android/Region$Event;->EXIT:Lcom/localytics/android/Region$Event;

    invoke-virtual {v1}, Lcom/localytics/android/Region$Event;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
