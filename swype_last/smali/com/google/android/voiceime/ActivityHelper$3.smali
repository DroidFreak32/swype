.class final Lcom/google/android/voiceime/ActivityHelper$3;
.super Ljava/lang/Object;
.source "ActivityHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voiceime/ActivityHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voiceime/ActivityHelper;


# direct methods
.method constructor <init>(Lcom/google/android/voiceime/ActivityHelper;)V
    .registers 2
    .param p1, "this$0"    # Lcom/google/android/voiceime/ActivityHelper;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/google/android/voiceime/ActivityHelper$3;->this$0:Lcom/google/android/voiceime/ActivityHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/voiceime/ActivityHelper$3;->this$0:Lcom/google/android/voiceime/ActivityHelper;

    const/4 v1, 0x0

    # invokes: Lcom/google/android/voiceime/ActivityHelper;->notifyResult(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/voiceime/ActivityHelper;->access$000(Lcom/google/android/voiceime/ActivityHelper;Ljava/lang/String;)V

    .line 106
    return-void
.end method
