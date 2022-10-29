.class Lcom/facebook/rebound/ui/SpringConfiguratorView$SeekbarListener;
.super Ljava/lang/Object;
.source "SpringConfiguratorView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/rebound/ui/SpringConfiguratorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SeekbarListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/rebound/ui/SpringConfiguratorView;


# direct methods
.method private constructor <init>(Lcom/facebook/rebound/ui/SpringConfiguratorView;)V
    .registers 2

    .prologue
    .line 267
    iput-object p1, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$SeekbarListener;->this$0:Lcom/facebook/rebound/ui/SpringConfiguratorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/rebound/ui/SpringConfiguratorView;Lcom/facebook/rebound/ui/SpringConfiguratorView$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/facebook/rebound/ui/SpringConfiguratorView;
    .param p2, "x1"    # Lcom/facebook/rebound/ui/SpringConfiguratorView$1;

    .prologue
    .line 267
    invoke-direct {p0, p1}, Lcom/facebook/rebound/ui/SpringConfiguratorView$SeekbarListener;-><init>(Lcom/facebook/rebound/ui/SpringConfiguratorView;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 14
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "val"    # I
    .param p3, "b"    # Z

    .prologue
    const v9, 0x47c35000    # 100000.0f

    const/4 v8, 0x0

    .line 274
    iget-object v4, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$SeekbarListener;->this$0:Lcom/facebook/rebound/ui/SpringConfiguratorView;

    # getter for: Lcom/facebook/rebound/ui/SpringConfiguratorView;->mTensionSeekBar:Landroid/widget/SeekBar;
    invoke-static {v4}, Lcom/facebook/rebound/ui/SpringConfiguratorView;->access$700(Lcom/facebook/rebound/ui/SpringConfiguratorView;)Landroid/widget/SeekBar;

    move-result-object v4

    if-ne p1, v4, :cond_42

    .line 275
    int-to-float v4, p2

    const/high16 v5, 0x43480000    # 200.0f

    mul-float/2addr v4, v5

    div-float/2addr v4, v9

    add-float v3, v4, v8

    .line 276
    .local v3, "scaledTension":F
    iget-object v4, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$SeekbarListener;->this$0:Lcom/facebook/rebound/ui/SpringConfiguratorView;

    # getter for: Lcom/facebook/rebound/ui/SpringConfiguratorView;->mSelectedSpringConfig:Lcom/facebook/rebound/SpringConfig;
    invoke-static {v4}, Lcom/facebook/rebound/ui/SpringConfiguratorView;->access$400(Lcom/facebook/rebound/ui/SpringConfiguratorView;)Lcom/facebook/rebound/SpringConfig;

    move-result-object v4

    float-to-double v6, v3

    invoke-static {v6, v7}, Lcom/facebook/rebound/OrigamiValueConverter;->tensionFromOrigamiValue(D)D

    move-result-wide v6

    iput-wide v6, v4, Lcom/facebook/rebound/SpringConfig;->tension:D

    .line 278
    # getter for: Lcom/facebook/rebound/ui/SpringConfiguratorView;->DECIMAL_FORMAT:Ljava/text/DecimalFormat;
    invoke-static {}, Lcom/facebook/rebound/ui/SpringConfiguratorView;->access$800()Ljava/text/DecimalFormat;

    move-result-object v4

    float-to-double v6, v3

    invoke-virtual {v4, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    .line 279
    .local v1, "roundedTensionLabel":Ljava/lang/String;
    iget-object v4, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$SeekbarListener;->this$0:Lcom/facebook/rebound/ui/SpringConfiguratorView;

    # getter for: Lcom/facebook/rebound/ui/SpringConfiguratorView;->mTensionLabel:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/facebook/rebound/ui/SpringConfiguratorView;->access$900(Lcom/facebook/rebound/ui/SpringConfiguratorView;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "T:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    .end local v1    # "roundedTensionLabel":Ljava/lang/String;
    .end local v3    # "scaledTension":F
    :cond_42
    iget-object v4, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$SeekbarListener;->this$0:Lcom/facebook/rebound/ui/SpringConfiguratorView;

    # getter for: Lcom/facebook/rebound/ui/SpringConfiguratorView;->mFrictionSeekBar:Landroid/widget/SeekBar;
    invoke-static {v4}, Lcom/facebook/rebound/ui/SpringConfiguratorView;->access$1000(Lcom/facebook/rebound/ui/SpringConfiguratorView;)Landroid/widget/SeekBar;

    move-result-object v4

    if-ne p1, v4, :cond_80

    .line 283
    int-to-float v4, p2

    const/high16 v5, 0x42480000    # 50.0f

    mul-float/2addr v4, v5

    div-float/2addr v4, v9

    add-float v2, v4, v8

    .line 284
    .local v2, "scaledFriction":F
    iget-object v4, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$SeekbarListener;->this$0:Lcom/facebook/rebound/ui/SpringConfiguratorView;

    # getter for: Lcom/facebook/rebound/ui/SpringConfiguratorView;->mSelectedSpringConfig:Lcom/facebook/rebound/SpringConfig;
    invoke-static {v4}, Lcom/facebook/rebound/ui/SpringConfiguratorView;->access$400(Lcom/facebook/rebound/ui/SpringConfiguratorView;)Lcom/facebook/rebound/SpringConfig;

    move-result-object v4

    float-to-double v6, v2

    invoke-static {v6, v7}, Lcom/facebook/rebound/OrigamiValueConverter;->frictionFromOrigamiValue(D)D

    move-result-wide v6

    iput-wide v6, v4, Lcom/facebook/rebound/SpringConfig;->friction:D

    .line 286
    # getter for: Lcom/facebook/rebound/ui/SpringConfiguratorView;->DECIMAL_FORMAT:Ljava/text/DecimalFormat;
    invoke-static {}, Lcom/facebook/rebound/ui/SpringConfiguratorView;->access$800()Ljava/text/DecimalFormat;

    move-result-object v4

    float-to-double v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "roundedFrictionLabel":Ljava/lang/String;
    iget-object v4, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$SeekbarListener;->this$0:Lcom/facebook/rebound/ui/SpringConfiguratorView;

    # getter for: Lcom/facebook/rebound/ui/SpringConfiguratorView;->mFrictionLabel:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/facebook/rebound/ui/SpringConfiguratorView;->access$1100(Lcom/facebook/rebound/ui/SpringConfiguratorView;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "F:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    .end local v0    # "roundedFrictionLabel":Ljava/lang/String;
    .end local v2    # "scaledFriction":F
    :cond_80
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 293
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 297
    return-void
.end method
