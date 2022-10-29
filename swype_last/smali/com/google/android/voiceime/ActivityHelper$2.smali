.class final Lcom/google/android/voiceime/ActivityHelper$2;
.super Ljava/lang/Object;
.source "ActivityHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 93
    iput-object p1, p0, Lcom/google/android/voiceime/ActivityHelper$2;->this$0:Lcom/google/android/voiceime/ActivityHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/voiceime/ActivityHelper$2;->this$0:Lcom/google/android/voiceime/ActivityHelper;

    const/4 v1, 0x0

    # invokes: Lcom/google/android/voiceime/ActivityHelper;->notifyResult(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/voiceime/ActivityHelper;->access$000(Lcom/google/android/voiceime/ActivityHelper;Ljava/lang/String;)V

    .line 98
    return-void
.end method
