.class public Lcom/nuance/swype/input/Stroke$DrawPath;
.super Ljava/lang/Object;
.source "Stroke.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/Stroke;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DrawPath"
.end annotation


# instance fields
.field public mPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/Stroke$DrawPath;->mPath:Landroid/graphics/Path;

    .line 191
    return-void
.end method
