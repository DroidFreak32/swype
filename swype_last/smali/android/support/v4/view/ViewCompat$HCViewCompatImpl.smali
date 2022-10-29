.class Landroid/support/v4/view/ViewCompat$HCViewCompatImpl;
.super Landroid/support/v4/view/ViewCompat$GBViewCompatImpl;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HCViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1140
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$GBViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAlpha(Landroid/view/View;)F
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1147
    .line 2031
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    .line 1147
    return v0
.end method

.method final getFrameTime()J
    .registers 3

    .prologue
    .line 2027
    invoke-static {}, Landroid/animation/ValueAnimator;->getFrameDelay()J

    move-result-wide v0

    .line 1143
    return-wide v0
.end method

.method public final getLayerType(Landroid/view/View;)I
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1155
    .line 2039
    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result v0

    .line 1155
    return v0
.end method

.method public final getMatrix(Landroid/view/View;)Landroid/graphics/Matrix;
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1192
    .line 3103
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 1192
    return-object v0
.end method

.method public final getMeasuredState(Landroid/view/View;)I
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1179
    .line 3055
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    .line 1179
    return v0
.end method

.method public final getMeasuredWidthAndState(Landroid/view/View;)I
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1171
    .line 3047
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result v0

    .line 1171
    return v0
.end method

.method public final getScaleX(Landroid/view/View;)F
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1270
    .line 5087
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    .line 1270
    return v0
.end method

.method public final getTranslationX(Landroid/view/View;)F
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1183
    .line 3059
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    .line 1183
    return v0
.end method

.method public final getTranslationY(Landroid/view/View;)F
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1187
    .line 3063
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    .line 1187
    return v0
.end method

.method public final jumpDrawablesToCurrentState(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1288
    .line 5155
    invoke-virtual {p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 1289
    return-void
.end method

.method public offsetLeftAndRight(Landroid/view/View;I)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "offset"    # I

    .prologue
    .line 1308
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatHC;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 1309
    return-void
.end method

.method public offsetTopAndBottom(Landroid/view/View;I)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "offset"    # I

    .prologue
    .line 1313
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatHC;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 1314
    return-void
.end method

.method public final resolveSizeAndState(III)I
    .registers 5
    .param p1, "size"    # I
    .param p2, "measureSpec"    # I
    .param p3, "childMeasuredState"    # I

    .prologue
    .line 1167
    .line 3043
    invoke-static {p1, p2, p3}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    .line 1167
    return v0
.end method

.method public final setActivated(Landroid/view/View;Z)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "activated"    # Z

    .prologue
    .line 1298
    .line 5163
    invoke-virtual {p1, p2}, Landroid/view/View;->setActivated(Z)V

    .line 1299
    return-void
.end method

.method public final setAlpha(Landroid/view/View;F)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # F

    .prologue
    .line 1205
    .line 4107
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 1206
    return-void
.end method

.method public setLayerPaint(Landroid/view/View;Landroid/graphics/Paint;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1161
    .line 3039
    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result v0

    .line 1161
    invoke-virtual {p0, p1, v0, p2}, Landroid/support/v4/view/ViewCompat$HCViewCompatImpl;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 1163
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 1164
    return-void
.end method

.method public final setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "layerType"    # I
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1151
    .line 2035
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1152
    return-void
.end method

.method public final setSaveFromParentEnabled$53599cc9(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1293
    .line 5159
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 1294
    return-void
.end method

.method public final setScaleX(Landroid/view/View;F)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # F

    .prologue
    .line 1229
    .line 4131
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 1230
    return-void
.end method

.method public final setScaleY(Landroid/view/View;F)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # F

    .prologue
    .line 1233
    .line 4135
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    .line 1234
    return-void
.end method

.method public final setTranslationX(Landroid/view/View;F)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # F

    .prologue
    .line 1197
    .line 4095
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 1198
    return-void
.end method

.method public final setTranslationY(Landroid/view/View;F)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # F

    .prologue
    .line 1201
    .line 4099
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 1202
    return-void
.end method
