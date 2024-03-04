.class final enum Lcom/fsck/k9/controller/MessagingController$MemorizingState;
.super Ljava/lang/Enum;
.source "MessagingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/controller/MessagingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "MemorizingState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fsck/k9/controller/MessagingController$MemorizingState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fsck/k9/controller/MessagingController$MemorizingState;

.field public static final enum FAILED:Lcom/fsck/k9/controller/MessagingController$MemorizingState;

.field public static final enum FINISHED:Lcom/fsck/k9/controller/MessagingController$MemorizingState;

.field public static final enum STARTED:Lcom/fsck/k9/controller/MessagingController$MemorizingState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5164
    new-instance v0, Lcom/fsck/k9/controller/MessagingController$MemorizingState;

    const-string v1, "STARTED"

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/controller/MessagingController$MemorizingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/controller/MessagingController$MemorizingState;->STARTED:Lcom/fsck/k9/controller/MessagingController$MemorizingState;

    new-instance v0, Lcom/fsck/k9/controller/MessagingController$MemorizingState;

    const-string v1, "FINISHED"

    invoke-direct {v0, v1, v3}, Lcom/fsck/k9/controller/MessagingController$MemorizingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/controller/MessagingController$MemorizingState;->FINISHED:Lcom/fsck/k9/controller/MessagingController$MemorizingState;

    new-instance v0, Lcom/fsck/k9/controller/MessagingController$MemorizingState;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v4}, Lcom/fsck/k9/controller/MessagingController$MemorizingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/controller/MessagingController$MemorizingState;->FAILED:Lcom/fsck/k9/controller/MessagingController$MemorizingState;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/fsck/k9/controller/MessagingController$MemorizingState;

    sget-object v1, Lcom/fsck/k9/controller/MessagingController$MemorizingState;->STARTED:Lcom/fsck/k9/controller/MessagingController$MemorizingState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fsck/k9/controller/MessagingController$MemorizingState;->FINISHED:Lcom/fsck/k9/controller/MessagingController$MemorizingState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fsck/k9/controller/MessagingController$MemorizingState;->FAILED:Lcom/fsck/k9/controller/MessagingController$MemorizingState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/fsck/k9/controller/MessagingController$MemorizingState;->$VALUES:[Lcom/fsck/k9/controller/MessagingController$MemorizingState;

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
    .line 5164
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fsck/k9/controller/MessagingController$MemorizingState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5164
    const-class v0, Lcom/fsck/k9/controller/MessagingController$MemorizingState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/controller/MessagingController$MemorizingState;

    return-object v0
.end method

.method public static values()[Lcom/fsck/k9/controller/MessagingController$MemorizingState;
    .locals 1

    .prologue
    .line 5164
    sget-object v0, Lcom/fsck/k9/controller/MessagingController$MemorizingState;->$VALUES:[Lcom/fsck/k9/controller/MessagingController$MemorizingState;

    invoke-virtual {v0}, [Lcom/fsck/k9/controller/MessagingController$MemorizingState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fsck/k9/controller/MessagingController$MemorizingState;

    return-object v0
.end method
