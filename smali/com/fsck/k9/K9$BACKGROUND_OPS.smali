.class public final enum Lcom/fsck/k9/K9$BACKGROUND_OPS;
.super Ljava/lang/Enum;
.source "K9.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/K9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BACKGROUND_OPS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fsck/k9/K9$BACKGROUND_OPS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fsck/k9/K9$BACKGROUND_OPS;

.field private static enum ALWAYS:Lcom/fsck/k9/K9$BACKGROUND_OPS;

.field private static enum NEVER:Lcom/fsck/k9/K9$BACKGROUND_OPS;

.field public static final enum WHEN_CHECKED:Lcom/fsck/k9/K9$BACKGROUND_OPS;

.field private static enum WHEN_CHECKED_AUTO_SYNC:Lcom/fsck/k9/K9$BACKGROUND_OPS;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 74
    new-instance v0, Lcom/fsck/k9/K9$BACKGROUND_OPS;

    const-string v1, "WHEN_CHECKED"

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/K9$BACKGROUND_OPS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/K9$BACKGROUND_OPS;->WHEN_CHECKED:Lcom/fsck/k9/K9$BACKGROUND_OPS;

    new-instance v0, Lcom/fsck/k9/K9$BACKGROUND_OPS;

    const-string v1, "ALWAYS"

    invoke-direct {v0, v1, v3}, Lcom/fsck/k9/K9$BACKGROUND_OPS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/K9$BACKGROUND_OPS;->ALWAYS:Lcom/fsck/k9/K9$BACKGROUND_OPS;

    new-instance v0, Lcom/fsck/k9/K9$BACKGROUND_OPS;

    const-string v1, "NEVER"

    invoke-direct {v0, v1, v4}, Lcom/fsck/k9/K9$BACKGROUND_OPS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/K9$BACKGROUND_OPS;->NEVER:Lcom/fsck/k9/K9$BACKGROUND_OPS;

    new-instance v0, Lcom/fsck/k9/K9$BACKGROUND_OPS;

    const-string v1, "WHEN_CHECKED_AUTO_SYNC"

    invoke-direct {v0, v1, v5}, Lcom/fsck/k9/K9$BACKGROUND_OPS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/K9$BACKGROUND_OPS;->WHEN_CHECKED_AUTO_SYNC:Lcom/fsck/k9/K9$BACKGROUND_OPS;

    .line 72
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/fsck/k9/K9$BACKGROUND_OPS;

    sget-object v1, Lcom/fsck/k9/K9$BACKGROUND_OPS;->WHEN_CHECKED:Lcom/fsck/k9/K9$BACKGROUND_OPS;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fsck/k9/K9$BACKGROUND_OPS;->ALWAYS:Lcom/fsck/k9/K9$BACKGROUND_OPS;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fsck/k9/K9$BACKGROUND_OPS;->NEVER:Lcom/fsck/k9/K9$BACKGROUND_OPS;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fsck/k9/K9$BACKGROUND_OPS;->WHEN_CHECKED_AUTO_SYNC:Lcom/fsck/k9/K9$BACKGROUND_OPS;

    aput-object v1, v0, v5

    sput-object v0, Lcom/fsck/k9/K9$BACKGROUND_OPS;->$VALUES:[Lcom/fsck/k9/K9$BACKGROUND_OPS;

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
    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fsck/k9/K9$BACKGROUND_OPS;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 72
    const-class v0, Lcom/fsck/k9/K9$BACKGROUND_OPS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/K9$BACKGROUND_OPS;

    return-object v0
.end method

.method public static values()[Lcom/fsck/k9/K9$BACKGROUND_OPS;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/fsck/k9/K9$BACKGROUND_OPS;->$VALUES:[Lcom/fsck/k9/K9$BACKGROUND_OPS;

    invoke-virtual {v0}, [Lcom/fsck/k9/K9$BACKGROUND_OPS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fsck/k9/K9$BACKGROUND_OPS;

    return-object v0
.end method
