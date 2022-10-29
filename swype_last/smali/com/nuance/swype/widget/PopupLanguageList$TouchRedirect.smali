.class final Lcom/nuance/swype/widget/PopupLanguageList$TouchRedirect;
.super Landroid/view/TouchDelegate;
.source "PopupLanguageList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/widget/PopupLanguageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TouchRedirect"
.end annotation


# instance fields
.field private isRedirecting:Z

.field private offset:I

.field private popup:Lcom/nuance/swype/widget/PopupLanguageList;


# direct methods
.method public constructor <init>(Lcom/nuance/swype/widget/PopupLanguageList;)V
    .registers 4
    .param p1, "popup"    # Lcom/nuance/swype/widget/PopupLanguageList;

    .prologue
    .line 40
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Lcom/nuance/swype/widget/PopupLanguageList;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 41
    iput-object p1, p0, Lcom/nuance/swype/widget/PopupLanguageList$TouchRedirect;->popup:Lcom/nuance/swype/widget/PopupLanguageList;

    .line 42
    return-void
.end method


# virtual methods
.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 47
    iget-boolean v3, p0, Lcom/nuance/swype/widget/PopupLanguageList$TouchRedirect;->isRedirecting:Z

    if-nez v3, :cond_2d

    iget-object v3, p0, Lcom/nuance/swype/widget/PopupLanguageList$TouchRedirect;->popup:Lcom/nuance/swype/widget/PopupLanguageList;

    invoke-virtual {v3}, Lcom/nuance/swype/widget/PopupLanguageList;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 49
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 50
    .local v0, "location":[I
    iget-object v3, p0, Lcom/nuance/swype/widget/PopupLanguageList$TouchRedirect;->popup:Lcom/nuance/swype/widget/PopupLanguageList;

    invoke-virtual {v3}, Lcom/nuance/swype/widget/PopupLanguageList;->getContentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 51
    aget v1, v0, v4

    .line 54
    .local v1, "popupY":I
    if-eqz v1, :cond_2d

    .line 55
    iput-boolean v4, p0, Lcom/nuance/swype/widget/PopupLanguageList$TouchRedirect;->isRedirecting:Z

    .line 58
    iget-object v3, p0, Lcom/nuance/swype/widget/PopupLanguageList$TouchRedirect;->popup:Lcom/nuance/swype/widget/PopupLanguageList;

    # getter for: Lcom/nuance/swype/widget/PopupLanguageList;->parentView:Landroid/view/View;
    invoke-static {v3}, Lcom/nuance/swype/widget/PopupLanguageList;->access$000(Lcom/nuance/swype/widget/PopupLanguageList;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 59
    aget v3, v0, v4

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/nuance/swype/widget/PopupLanguageList$TouchRedirect;->offset:I

    .line 64
    .end local v0    # "location":[I
    .end local v1    # "popupY":I
    :cond_2d
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    .line 65
    .local v2, "redirectEvent":Landroid/view/MotionEvent;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lcom/nuance/swype/widget/PopupLanguageList$TouchRedirect;->offset:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 66
    iget-object v3, p0, Lcom/nuance/swype/widget/PopupLanguageList$TouchRedirect;->popup:Lcom/nuance/swype/widget/PopupLanguageList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Lcom/nuance/swype/widget/PopupLanguageList;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v3

    return v3
.end method
