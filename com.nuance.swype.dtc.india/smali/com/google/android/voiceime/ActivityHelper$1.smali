.class final Lcom/google/android/voiceime/ActivityHelper$1;
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

.field final synthetic val$recognitionResults:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/voiceime/ActivityHelper;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/voiceime/ActivityHelper;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/android/voiceime/ActivityHelper$1;->this$0:Lcom/google/android/voiceime/ActivityHelper;

    iput-object p2, p0, Lcom/google/android/voiceime/ActivityHelper$1;->val$recognitionResults:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/voiceime/ActivityHelper$1;->this$0:Lcom/google/android/voiceime/ActivityHelper;

    iget-object v1, p0, Lcom/google/android/voiceime/ActivityHelper$1;->val$recognitionResults:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-static {v0, v1}, Lcom/google/android/voiceime/ActivityHelper;->access$000(Lcom/google/android/voiceime/ActivityHelper;Ljava/lang/String;)V

    .line 89
    return-void
.end method
