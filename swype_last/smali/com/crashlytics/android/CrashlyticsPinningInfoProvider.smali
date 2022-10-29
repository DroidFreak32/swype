.class final Lcom/crashlytics/android/CrashlyticsPinningInfoProvider;
.super Ljava/lang/Object;
.source "CrashlyticsPinningInfoProvider.java"

# interfaces
.implements Lio/fabric/sdk/android/services/network/PinningInfoProvider;


# instance fields
.field private final pinningInfo:Lcom/crashlytics/android/PinningInfoProvider;


# direct methods
.method public constructor <init>(Lcom/crashlytics/android/PinningInfoProvider;)V
    .registers 2
    .param p1, "pinningInfo"    # Lcom/crashlytics/android/PinningInfoProvider;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/crashlytics/android/CrashlyticsPinningInfoProvider;->pinningInfo:Lcom/crashlytics/android/PinningInfoProvider;

    .line 18
    return-void
.end method


# virtual methods
.method public final getKeyStorePassword()Ljava/lang/String;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/crashlytics/android/CrashlyticsPinningInfoProvider;->pinningInfo:Lcom/crashlytics/android/PinningInfoProvider;

    invoke-interface {v0}, Lcom/crashlytics/android/PinningInfoProvider;->getKeyStorePassword()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getKeyStoreStream()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/crashlytics/android/CrashlyticsPinningInfoProvider;->pinningInfo:Lcom/crashlytics/android/PinningInfoProvider;

    invoke-interface {v0}, Lcom/crashlytics/android/PinningInfoProvider;->getKeyStoreStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final getPins()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/crashlytics/android/CrashlyticsPinningInfoProvider;->pinningInfo:Lcom/crashlytics/android/PinningInfoProvider;

    invoke-interface {v0}, Lcom/crashlytics/android/PinningInfoProvider;->getPins()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
