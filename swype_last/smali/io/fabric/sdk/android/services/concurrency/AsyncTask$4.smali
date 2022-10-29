.class public final synthetic Lio/fabric/sdk/android/services/concurrency/AsyncTask$4;
.super Ljava/lang/Object;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/fabric/sdk/android/services/concurrency/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$io$fabric$sdk$android$services$concurrency$AsyncTask$Status:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 580
    invoke-static {}, Lio/fabric/sdk/android/services/concurrency/AsyncTask$Status;->values()[Lio/fabric/sdk/android/services/concurrency/AsyncTask$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/fabric/sdk/android/services/concurrency/AsyncTask$4;->$SwitchMap$io$fabric$sdk$android$services$concurrency$AsyncTask$Status:[I

    :try_start_9
    sget-object v0, Lio/fabric/sdk/android/services/concurrency/AsyncTask$4;->$SwitchMap$io$fabric$sdk$android$services$concurrency$AsyncTask$Status:[I

    sget-object v1, Lio/fabric/sdk/android/services/concurrency/AsyncTask$Status;->RUNNING:Lio/fabric/sdk/android/services/concurrency/AsyncTask$Status;

    invoke-virtual {v1}, Lio/fabric/sdk/android/services/concurrency/AsyncTask$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_22

    :goto_14
    :try_start_14
    sget-object v0, Lio/fabric/sdk/android/services/concurrency/AsyncTask$4;->$SwitchMap$io$fabric$sdk$android$services$concurrency$AsyncTask$Status:[I

    sget-object v1, Lio/fabric/sdk/android/services/concurrency/AsyncTask$Status;->FINISHED:Lio/fabric/sdk/android/services/concurrency/AsyncTask$Status;

    invoke-virtual {v1}, Lio/fabric/sdk/android/services/concurrency/AsyncTask$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_20

    :goto_1f
    return-void

    :catch_20
    move-exception v0

    goto :goto_1f

    :catch_22
    move-exception v0

    goto :goto_14
.end method
