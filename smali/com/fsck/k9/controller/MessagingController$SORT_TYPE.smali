.class public final enum Lcom/fsck/k9/controller/MessagingController$SORT_TYPE;
.super Ljava/lang/Enum;
.source "MessagingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/controller/MessagingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SORT_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fsck/k9/controller/MessagingController$SORT_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fsck/k9/controller/MessagingController$SORT_TYPE;

.field private static enum SORT_ATTACHMENT:Lcom/fsck/k9/controller/MessagingController$SORT_TYPE;

.field public static final enum SORT_DATE:Lcom/fsck/k9/controller/MessagingController$SORT_TYPE;

.field private static enum SORT_FLAGGED:Lcom/fsck/k9/controller/MessagingController$SORT_TYPE;

.field private static enum SORT_SENDER:Lcom/fsck/k9/controller/MessagingController$SORT_TYPE;

.field private static enum SORT_SUBJECT:Lcom/fsck/k9/controller/MessagingController$SORT_TYPE;

.field private static enum SORT_UNREAD:Lcom/fsck/k9/controller/MessagingController$SORT_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 146
    new-instance v0, Lcom/fsck/k9/controller/MessagingController$SORT_TYPE;

    const-string v1, "SORT_DATE"

    invoke-direct {v0, v1, v3}, Lcom/fsck/k9/controller/MessagingController$SORT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/controller/MessagingController$SORT_TYPE;->SORT_DATE:Lcom/fsck/k9/controller/MessagingController$SORT_TYPE;

    .line 147
    new-instance v0, Lcom/fsck/k9/controller/MessagingController$SORT_TYPE;

    const-string v1, "SORT_SUBJECT"

    invoke-direct {v0, v1, v4}, Lcom/fsck/k9/controller/MessagingController$SORT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/controller/MessagingController$SORT_TYPE;->SORT_SUBJECT:Lcom/fsck/k9/controller/MessagingController$SORT_TYPE;

    .line 148
    new-instance v0, Lcom/fsck/k9/controller/MessagingController$SORT_TYPE;

    const-string v1, "SORT_SENDER"

    invoke-direct {v0, v1, v5}, Lcom/fsck/k9/controller/MessagingController$SORT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/controller/MessagingController$SORT_TYPE;->SORT_SENDER:Lcom/fsck/k9/controller/MessagingController$SORT_TYPE;

    .line 149
    new-instance v0, Lcom/fsck/k9/controller/MessagingController$SORT_TYPE;

    const-string v1, "SORT_UNREAD"

    invoke-direct {v0, v1, v6}, Lcom/fsck/k9/controller/MessagingController$SORT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/controller/MessagingController$SORT_TYPE;->SORT_UNREAD:Lcom/fsck/k9/controller/MessagingController$SORT_TYPE;

    .line 150
    new-instance v0, Lcom/fsck/k9/controller/MessagingController$SORT_TYPE;

    const-string v1, "SORT_FLAGGED"

    invoke-direct {v0, v1, v7}, Lcom/fsck/k9/controller/MessagingController$SORT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/controller/MessagingController$SORT_TYPE;->SORT_FLAGGED:Lcom/fsck/k9/controller/MessagingController$SORT_TYPE;

    .line 151
    new-instance v0, Lcom/fsck/k9/controller/MessagingController$SORT_TYPE;

    const-string v1, "SORT_ATTACHMENT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/controller/MessagingController$SORT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/controller/MessagingController$SORT_TYPE;->SORT_ATTACHMENT:Lcom/fsck/k9/controller/MessagingController$SORT_TYPE;

    .line 144
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/fsck/k9/controller/MessagingController$SORT_TYPE;

    sget-object v1, Lcom/fsck/k9/controller/MessagingController$SORT_TYPE;->SORT_DATE:Lcom/fsck/k9/controller/MessagingController$SORT_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fsck/k9/controller/MessagingController$SORT_TYPE;->SORT_SUBJECT:Lcom/fsck/k9/controller/MessagingController$SORT_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fsck/k9/controller/MessagingController$SORT_TYPE;->SORT_SENDER:Lcom/fsck/k9/controller/MessagingController$SORT_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fsck/k9/controller/MessagingController$SORT_TYPE;->SORT_UNREAD:Lcom/fsck/k9/controller/MessagingController$SORT_TYPE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fsck/k9/controller/MessagingController$SORT_TYPE;->SORT_FLAGGED:Lcom/fsck/k9/controller/MessagingController$SORT_TYPE;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/fsck/k9/controller/MessagingController$SORT_TYPE;->SORT_ATTACHMENT:Lcom/fsck/k9/controller/MessagingController$SORT_TYPE;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fsck/k9/controller/MessagingController$SORT_TYPE;->$VALUES:[Lcom/fsck/k9/controller/MessagingController$SORT_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 158
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 159
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fsck/k9/controller/MessagingController$SORT_TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 144
    const-class v0, Lcom/fsck/k9/controller/MessagingController$SORT_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/controller/MessagingController$SORT_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/fsck/k9/controller/MessagingController$SORT_TYPE;
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lcom/fsck/k9/controller/MessagingController$SORT_TYPE;->$VALUES:[Lcom/fsck/k9/controller/MessagingController$SORT_TYPE;

    invoke-virtual {v0}, [Lcom/fsck/k9/controller/MessagingController$SORT_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fsck/k9/controller/MessagingController$SORT_TYPE;

    return-object v0
.end method
