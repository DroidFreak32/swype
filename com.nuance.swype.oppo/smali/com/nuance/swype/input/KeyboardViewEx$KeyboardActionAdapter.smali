.class public abstract Lcom/nuance/swype/input/KeyboardViewEx$KeyboardActionAdapter;
.super Ljava/lang/Object;
.source "KeyboardViewEx.java"

# interfaces
.implements Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/KeyboardViewEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "KeyboardActionAdapter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoublePress(I)V
    .locals 0
    .param p1, "primaryCode"    # I

    .prologue
    .line 281
    return-void
.end method

.method public onHardwareCharKey(I[I)V
    .locals 0
    .param p1, "primaryCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    .line 290
    return-void
.end method

.method public onKey(Landroid/graphics/Point;I[ILcom/nuance/swype/input/KeyboardEx$Key;J)V
    .locals 0
    .param p1, "point"    # Landroid/graphics/Point;
    .param p2, "primaryCode"    # I
    .param p3, "keyCodes"    # [I
    .param p4, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p5, "eventTime"    # J

    .prologue
    .line 287
    return-void
.end method

.method public onMultitapTimeout()V
    .locals 0

    .prologue
    .line 308
    return-void
.end method

.method public onPress(I)V
    .locals 0
    .param p1, "primaryCode"    # I

    .prologue
    .line 278
    return-void
.end method

.method public onRelease(I)V
    .locals 0
    .param p1, "primaryCode"    # I

    .prologue
    .line 284
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 293
    return-void
.end method

.method public onTrace(Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;)V
    .locals 0
    .param p1, "trace"    # Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    .prologue
    .line 311
    return-void
.end method

.method public onWrite(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 314
    .local p1, "write":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    return-void
.end method

.method public swipeDown()V
    .locals 0

    .prologue
    .line 302
    return-void
.end method

.method public swipeLeft()V
    .locals 0

    .prologue
    .line 296
    return-void
.end method

.method public swipeRight()V
    .locals 0

    .prologue
    .line 299
    return-void
.end method

.method public swipeUp()V
    .locals 0

    .prologue
    .line 305
    return-void
.end method
