.class final Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImplIcs;
.super Ljava/lang/Object;
.source "PagerTitleStrip.java"

# interfaces
.implements Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/PagerTitleStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PagerTitleStripImplIcs"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final setSingleLineAllCaps(Landroid/widget/TextView;)V
    .registers 4
    .param p1, "text"    # Landroid/widget/TextView;

    .prologue
    .line 97
    .line 1028
    new-instance v0, Landroid/support/v4/view/PagerTitleStripIcs$SingleLineAllCapsTransform;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/view/PagerTitleStripIcs$SingleLineAllCapsTransform;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 98
    return-void
.end method
