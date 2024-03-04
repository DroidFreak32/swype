.class final Lcom/fsck/k9/controller/MessagingController$6;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/controller/MessagingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/fsck/k9/controller/MessagingController;

.field private synthetic val$accountUuids:[Ljava/lang/String;

.field private synthetic val$folderNames:[Ljava/lang/String;

.field private synthetic val$forbiddenFlags:[Lcom/fsck/k9/mail/Flag;

.field private synthetic val$integrate:Z

.field private synthetic val$listener:Lcom/fsck/k9/controller/MessagingListener;

.field private synthetic val$messages:[Lcom/fsck/k9/mail/Message;

.field private synthetic val$query:Ljava/lang/String;

.field private synthetic val$requiredFlags:[Lcom/fsck/k9/mail/Flag;


# direct methods
.method constructor <init>(Lcom/fsck/k9/controller/MessagingController;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z[Lcom/fsck/k9/mail/Flag;[Lcom/fsck/k9/mail/Flag;Lcom/fsck/k9/controller/MessagingListener;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 754
    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingController$6;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iput-object v0, p0, Lcom/fsck/k9/controller/MessagingController$6;->val$accountUuids:[Ljava/lang/String;

    iput-object v0, p0, Lcom/fsck/k9/controller/MessagingController$6;->val$folderNames:[Ljava/lang/String;

    iput-object v0, p0, Lcom/fsck/k9/controller/MessagingController$6;->val$messages:[Lcom/fsck/k9/mail/Message;

    iput-object p4, p0, Lcom/fsck/k9/controller/MessagingController$6;->val$query:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/fsck/k9/controller/MessagingController$6;->val$integrate:Z

    iput-object p6, p0, Lcom/fsck/k9/controller/MessagingController$6;->val$requiredFlags:[Lcom/fsck/k9/mail/Flag;

    iput-object p7, p0, Lcom/fsck/k9/controller/MessagingController$6;->val$forbiddenFlags:[Lcom/fsck/k9/mail/Flag;

    iput-object p8, p0, Lcom/fsck/k9/controller/MessagingController$6;->val$listener:Lcom/fsck/k9/controller/MessagingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .prologue
    .line 757
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController$6;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingController$6;->val$accountUuids:[Ljava/lang/String;

    iget-object v2, p0, Lcom/fsck/k9/controller/MessagingController$6;->val$folderNames:[Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/fsck/k9/controller/MessagingController$6;->val$query:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/fsck/k9/controller/MessagingController$6;->val$integrate:Z

    iget-object v6, p0, Lcom/fsck/k9/controller/MessagingController$6;->val$requiredFlags:[Lcom/fsck/k9/mail/Flag;

    iget-object v7, p0, Lcom/fsck/k9/controller/MessagingController$6;->val$forbiddenFlags:[Lcom/fsck/k9/mail/Flag;

    iget-object v8, p0, Lcom/fsck/k9/controller/MessagingController$6;->val$listener:Lcom/fsck/k9/controller/MessagingListener;

    invoke-virtual/range {v0 .. v8}, Lcom/fsck/k9/controller/MessagingController;->searchLocalMessagesSynchronous([Ljava/lang/String;[Ljava/lang/String;[Lcom/fsck/k9/mail/Message;Ljava/lang/String;Z[Lcom/fsck/k9/mail/Flag;[Lcom/fsck/k9/mail/Flag;Lcom/fsck/k9/controller/MessagingListener;)V

    .line 758
    return-void
.end method
