.class public Lcom/nuance/swype/input/ShadowEffect;
.super Ljava/lang/Object;
.source "ShadowEffect.java"


# static fields
.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private final props:Lcom/nuance/swype/input/ShadowProps;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "ShadowEffect"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/ShadowEffect;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/nuance/swype/input/ShadowProps;

    invoke-direct {v0}, Lcom/nuance/swype/input/ShadowProps;-><init>()V

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/ShadowEffect;-><init>(Lcom/nuance/swype/input/ShadowProps;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/nuance/swype/input/ShadowProps;)V
    .locals 0
    .param p1, "props"    # Lcom/nuance/swype/input/ShadowProps;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/nuance/swype/input/ShadowEffect;->props:Lcom/nuance/swype/input/ShadowProps;

    .line 56
    return-void
.end method

.method public static canUseShadowLayer(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 86
    invoke-static {p0}, Lcom/nuance/swype/input/ShadowEffect;->getPaint(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getPaint(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Paint;
    .locals 3
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, "paint":Landroid/graphics/Paint;
    instance-of v1, p0, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v1, :cond_1

    .line 92
    sget-object v1, Lcom/nuance/swype/input/ShadowEffect;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "getPaint(): shadow layer not so suitable for NinePatchDrawable"

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->w(Ljava/lang/Object;)V

    .line 93
    check-cast p0, Landroid/graphics/drawable/NinePatchDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 99
    :cond_0
    :goto_0
    return-object v0

    .line 94
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    instance-of v1, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_2

    .line 95
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    goto :goto_0

    .line 96
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    instance-of v1, p0, Landroid/graphics/drawable/ShapeDrawable;

    if-eqz v1, :cond_0

    .line 97
    check-cast p0, Landroid/graphics/drawable/ShapeDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 107
    iget-object v1, p0, Lcom/nuance/swype/input/ShadowEffect;->props:Lcom/nuance/swype/input/ShadowProps;

    invoke-virtual {v1}, Lcom/nuance/swype/input/ShadowProps;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 119
    :goto_0
    return-void

    .line 111
    :cond_0
    invoke-static {p2}, Lcom/nuance/swype/input/ShadowEffect;->getPaint(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Paint;

    move-result-object v0

    .line 112
    .local v0, "paint":Landroid/graphics/Paint;
    if-nez v0, :cond_1

    .line 113
    sget-object v1, Lcom/nuance/swype/input/ShadowEffect;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "draw(): drawable does not provide paint (only some types allow access to Paint)"

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->w(Ljava/lang/Object;)V

    .line 115
    :cond_1
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/ShadowEffect;->set(Landroid/graphics/Paint;)V

    .line 116
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 117
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/ShadowEffect;->reset(Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public reset(Landroid/graphics/Paint;)V
    .locals 2
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/4 v1, 0x0

    .line 77
    iget-object v0, p0, Lcom/nuance/swype/input/ShadowEffect;->props:Lcom/nuance/swype/input/ShadowProps;

    invoke-virtual {v0}, Lcom/nuance/swype/input/ShadowProps;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v1, v1, v0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 80
    :cond_0
    return-void
.end method

.method public set(Landroid/graphics/Paint;)V
    .locals 4
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/nuance/swype/input/ShadowEffect;->props:Lcom/nuance/swype/input/ShadowProps;

    invoke-virtual {v0}, Lcom/nuance/swype/input/ShadowProps;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/nuance/swype/input/ShadowEffect;->props:Lcom/nuance/swype/input/ShadowProps;

    invoke-virtual {v0}, Lcom/nuance/swype/input/ShadowProps;->getRadius()F

    move-result v0

    iget-object v1, p0, Lcom/nuance/swype/input/ShadowEffect;->props:Lcom/nuance/swype/input/ShadowProps;

    invoke-virtual {v1}, Lcom/nuance/swype/input/ShadowProps;->getOffsetX()F

    move-result v1

    iget-object v2, p0, Lcom/nuance/swype/input/ShadowEffect;->props:Lcom/nuance/swype/input/ShadowProps;

    invoke-virtual {v2}, Lcom/nuance/swype/input/ShadowProps;->getOffsetY()F

    move-result v2

    iget-object v3, p0, Lcom/nuance/swype/input/ShadowEffect;->props:Lcom/nuance/swype/input/ShadowProps;

    invoke-virtual {v3}, Lcom/nuance/swype/input/ShadowProps;->getColor()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 71
    :cond_0
    return-void
.end method
