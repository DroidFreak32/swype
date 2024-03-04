.class public final Lcom/fsck/k9/controller/MessageRemovalListener;
.super Ljava/lang/Object;
.source "MessagingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/controller/MessagingController;->downloadMessages$1076e9d3(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Folder;Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Ljava/util/List;)I
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/fsck/k9/controller/MessagingController;

.field public final synthetic val$account:Lcom/fsck/k9/Account;

.field public final synthetic val$folder:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1539
    iput-object p1, p0, Lcom/fsck/k9/controller/MessageRemovalListener;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iput-object p2, p0, Lcom/fsck/k9/controller/MessageRemovalListener;->val$account:Lcom/fsck/k9/Account;

    iput-object p3, p0, Lcom/fsck/k9/controller/MessageRemovalListener;->val$folder:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
