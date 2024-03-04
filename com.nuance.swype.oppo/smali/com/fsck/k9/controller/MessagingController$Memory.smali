.class final Lcom/fsck/k9/controller/MessagingController$Memory;
.super Ljava/lang/Object;
.source "MessagingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/controller/MessagingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Memory"
.end annotation


# instance fields
.field account:Lcom/fsck/k9/Account;

.field failureMessage:Ljava/lang/String;

.field folderCompleted:I

.field folderName:Ljava/lang/String;

.field folderTotal:I

.field processingCommandTitle:Ljava/lang/String;

.field processingState:Lcom/fsck/k9/controller/MessagingController$MemorizingState;

.field pushingState:Lcom/fsck/k9/controller/MessagingController$MemorizingState;

.field sendingState:Lcom/fsck/k9/controller/MessagingController$MemorizingState;

.field syncingNumNewMessages:I

.field syncingState:Lcom/fsck/k9/controller/MessagingController$MemorizingState;

.field syncingTotalMessagesInMailbox:I


# direct methods
.method constructor <init>(Lcom/fsck/k9/Account;Ljava/lang/String;)V
    .locals 2
    .param p1, "nAccount"    # Lcom/fsck/k9/Account;
    .param p2, "nFolderName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 5184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5170
    iput-object v0, p0, Lcom/fsck/k9/controller/MessagingController$Memory;->syncingState:Lcom/fsck/k9/controller/MessagingController$MemorizingState;

    .line 5171
    iput-object v0, p0, Lcom/fsck/k9/controller/MessagingController$Memory;->sendingState:Lcom/fsck/k9/controller/MessagingController$MemorizingState;

    .line 5172
    iput-object v0, p0, Lcom/fsck/k9/controller/MessagingController$Memory;->pushingState:Lcom/fsck/k9/controller/MessagingController$MemorizingState;

    .line 5173
    iput-object v0, p0, Lcom/fsck/k9/controller/MessagingController$Memory;->processingState:Lcom/fsck/k9/controller/MessagingController$MemorizingState;

    .line 5174
    iput-object v0, p0, Lcom/fsck/k9/controller/MessagingController$Memory;->failureMessage:Ljava/lang/String;

    .line 5179
    iput v1, p0, Lcom/fsck/k9/controller/MessagingController$Memory;->folderCompleted:I

    .line 5180
    iput v1, p0, Lcom/fsck/k9/controller/MessagingController$Memory;->folderTotal:I

    .line 5181
    iput-object v0, p0, Lcom/fsck/k9/controller/MessagingController$Memory;->processingCommandTitle:Ljava/lang/String;

    .line 5185
    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingController$Memory;->account:Lcom/fsck/k9/Account;

    .line 5186
    iput-object p2, p0, Lcom/fsck/k9/controller/MessagingController$Memory;->folderName:Ljava/lang/String;

    .line 5187
    return-void
.end method
