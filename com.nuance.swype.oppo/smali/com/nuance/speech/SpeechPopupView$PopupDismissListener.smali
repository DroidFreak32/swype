.class Lcom/nuance/speech/SpeechPopupView$PopupDismissListener;
.super Ljava/lang/Object;
.source "SpeechPopupView.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/speech/SpeechPopupView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PopupDismissListener"
.end annotation


# instance fields
.field private audioManagerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/media/AudioManager;",
            ">;"
        }
    .end annotation
.end field

.field private mgrRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/accessibility/AccessibilityManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x3

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    const-string v3, "audio"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 190
    .local v0, "audioManager":Landroid/media/AudioManager;
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/nuance/speech/SpeechPopupView$PopupDismissListener;->audioManagerRef:Ljava/lang/ref/WeakReference;

    .line 192
    const/4 v3, 0x2

    invoke-virtual {v0, p0, v7, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v2

    .line 193
    .local v2, "result":I
    invoke-static {}, Lcom/nuance/speech/SpeechPopupView;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "..request audio focus result.."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 194
    const-string v3, "accessibility"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    .line 195
    .local v1, "mgr":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v1, :cond_0

    .line 196
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/nuance/speech/SpeechPopupView$PopupDismissListener;->mgrRef:Ljava/lang/ref/WeakReference;

    .line 200
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 201
    :cond_1
    const/4 v3, 0x1

    invoke-virtual {v0, v7, v3}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 203
    :cond_2
    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 226
    return-void
.end method

.method public onDismiss()V
    .locals 4

    .prologue
    .line 207
    iget-object v2, p0, Lcom/nuance/speech/SpeechPopupView$PopupDismissListener;->audioManagerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 208
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_3

    .line 211
    const/4 v1, 0x0

    .line 212
    .local v1, "mgr":Landroid/view/accessibility/AccessibilityManager;
    iget-object v2, p0, Lcom/nuance/speech/SpeechPopupView$PopupDismissListener;->mgrRef:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    .line 213
    iget-object v2, p0, Lcom/nuance/speech/SpeechPopupView$PopupDismissListener;->mgrRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "mgr":Landroid/view/accessibility/AccessibilityManager;
    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    .line 215
    .restart local v1    # "mgr":Landroid/view/accessibility/AccessibilityManager;
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 216
    :cond_1
    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 218
    :cond_2
    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 219
    iget-object v2, p0, Lcom/nuance/speech/SpeechPopupView$PopupDismissListener;->audioManagerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->clear()V

    .line 221
    .end local v1    # "mgr":Landroid/view/accessibility/AccessibilityManager;
    :cond_3
    return-void
.end method
