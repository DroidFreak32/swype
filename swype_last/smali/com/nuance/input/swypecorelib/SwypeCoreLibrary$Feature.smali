.class public final enum Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;
.super Ljava/lang/Enum;
.source "SwypeCoreLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Feature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;

.field public static final enum ChineseInput:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;

.field public static final enum Trace:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;

.field public static final enum WriteAlpha:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;

.field public static final enum WriteChinese:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;

.field public static final enum WriteJapanese:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 254
    new-instance v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;

    const-string/jumbo v1, "Trace"

    invoke-direct {v0, v1, v2}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;->Trace:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;

    new-instance v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;

    const-string/jumbo v1, "ChineseInput"

    invoke-direct {v0, v1, v3}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;->ChineseInput:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;

    new-instance v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;

    const-string/jumbo v1, "WriteAlpha"

    invoke-direct {v0, v1, v4}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;->WriteAlpha:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;

    new-instance v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;

    const-string/jumbo v1, "WriteChinese"

    invoke-direct {v0, v1, v5}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;->WriteChinese:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;

    new-instance v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;

    const-string/jumbo v1, "WriteJapanese"

    invoke-direct {v0, v1, v6}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;->WriteJapanese:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;

    sget-object v1, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;->Trace:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;->ChineseInput:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;->WriteAlpha:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;->WriteChinese:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;->WriteJapanese:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;

    aput-object v1, v0, v6

    sput-object v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;->$VALUES:[Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 254
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 254
    const-class v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;

    return-object v0
.end method

.method public static values()[Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;
    .registers 1

    .prologue
    .line 254
    sget-object v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;->$VALUES:[Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;

    invoke-virtual {v0}, [Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;

    return-object v0
.end method
