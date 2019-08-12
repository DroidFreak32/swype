.class public Lcom/nuance/input/swypecorelib/T9WriteKorean;
.super Lcom/nuance/input/swypecorelib/T9WriteCJK;
.source "T9WriteKorean.java"


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 6
    new-instance v0, Lcom/nuance/input/swypecorelib/T9WriteCJKSetting;

    invoke-direct {v0}, Lcom/nuance/input/swypecorelib/T9WriteCJKSetting;-><init>()V

    invoke-direct {p0, v0}, Lcom/nuance/input/swypecorelib/T9WriteCJK;-><init>(Lcom/nuance/input/swypecorelib/T9WriteCJKSetting;)V

    .line 7
    return-void
.end method

.method private static native Write_Korean_create(Ljava/lang/String;)J
.end method

.method private static native Write_Korean_destroy(J)V
.end method


# virtual methods
.method protected create_native_context(Ljava/lang/String;)J
    .locals 2
    .param p1, "databaseConfigFile"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-static {p1}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->Write_Korean_create(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/input/swypecorelib/T9WriteKorean;->nativeContext:J

    .line 12
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/T9WriteKorean;->nativeContext:J

    return-wide v0
.end method

.method protected destroy_native_context(J)V
    .locals 1
    .param p1, "nativeContext"    # J

    .prologue
    .line 17
    invoke-static {p1, p2}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->Write_Korean_destroy(J)V

    .line 18
    return-void
.end method
