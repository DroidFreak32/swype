.class public final enum Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;
.super Ljava/lang/Enum;
.source "SwypeCoreLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Core"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;

.field public static final enum Trace:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;

.field public static final enum WriteAlpha:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;

.field public static final enum WriteChinese:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;

.field public static final enum XT9:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;

.field public static final enum XT9BuildID:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 205
    new-instance v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;

    const-string v1, "XT9"

    invoke-direct {v0, v1, v2}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;->XT9:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;

    new-instance v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;

    const-string v1, "XT9BuildID"

    invoke-direct {v0, v1, v3}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;->XT9BuildID:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;

    new-instance v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;

    const-string v1, "Trace"

    invoke-direct {v0, v1, v4}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;->Trace:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;

    new-instance v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;

    const-string v1, "WriteAlpha"

    invoke-direct {v0, v1, v5}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;->WriteAlpha:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;

    new-instance v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;

    const-string v1, "WriteChinese"

    invoke-direct {v0, v1, v6}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;->WriteChinese:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;

    sget-object v1, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;->XT9:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;->XT9BuildID:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;->Trace:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;->WriteAlpha:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;->WriteChinese:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;

    aput-object v1, v0, v6

    sput-object v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;->$VALUES:[Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 205
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 205
    const-class v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;

    return-object v0
.end method

.method public static values()[Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;
    .locals 1

    .prologue
    .line 205
    sget-object v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;->$VALUES:[Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;

    invoke-virtual {v0}, [Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;

    return-object v0
.end method
