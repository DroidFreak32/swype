.class public Lcom/nuance/input/swypecorelib/T9WriteChinese;
.super Lcom/nuance/input/swypecorelib/T9WriteCJK;
.source "T9WriteChinese.java"


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 8
    new-instance v0, Lcom/nuance/input/swypecorelib/T9WriteCJKSetting;

    invoke-direct {v0}, Lcom/nuance/input/swypecorelib/T9WriteCJKSetting;-><init>()V

    invoke-direct {p0, v0}, Lcom/nuance/input/swypecorelib/T9WriteCJK;-><init>(Lcom/nuance/input/swypecorelib/T9WriteCJKSetting;)V

    .line 9
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteChinese;->settings:Lcom/nuance/input/swypecorelib/T9WriteSetting;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->setRecognitionMode(I)V

    .line 10
    return-void
.end method

.method private static native Write_Chinese_create(Ljava/lang/String;)J
.end method

.method private static native Write_Chinese_destroy(J)V
.end method


# virtual methods
.method protected create_native_context(Ljava/lang/String;)J
    .registers 4
    .param p1, "databaseConfigFile"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-static {p1}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->Write_Chinese_create(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/input/swypecorelib/T9WriteChinese;->nativeContext:J

    .line 15
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/T9WriteChinese;->nativeContext:J

    return-wide v0
.end method

.method protected destroy_native_context(J)V
    .registers 4
    .param p1, "nativeContext"    # J

    .prologue
    .line 20
    invoke-static {p1, p2}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->Write_Chinese_destroy(J)V

    .line 21
    return-void
.end method
