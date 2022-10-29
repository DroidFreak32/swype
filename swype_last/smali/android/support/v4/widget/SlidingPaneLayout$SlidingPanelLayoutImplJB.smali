.class final Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJB;
.super Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplBase;
.source "SlidingPaneLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/SlidingPaneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SlidingPanelLayoutImplJB"
.end annotation


# instance fields
.field private mGetDisplayList:Ljava/lang/reflect/Method;

.field private mRecreateDisplayList:Ljava/lang/reflect/Field;


# direct methods
.method constructor <init>()V
    .registers 5

    .prologue
    .line 1515
    invoke-direct {p0}, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplBase;-><init>()V

    .line 1517
    :try_start_3
    const-class v1, Landroid/view/View;

    const-string/jumbo v2, "getDisplayList"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJB;->mGetDisplayList:Ljava/lang/reflect/Method;
    :try_end_f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_f} :catch_21

    .line 1522
    :goto_f
    :try_start_f
    const-class v1, Landroid/view/View;

    const-string/jumbo v2, "mRecreateDisplayList"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJB;->mRecreateDisplayList:Ljava/lang/reflect/Field;

    .line 1523
    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJB;->mRecreateDisplayList:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_20
    .catch Ljava/lang/NoSuchFieldException; {:try_start_f .. :try_end_20} :catch_2c

    .line 1527
    :goto_20
    return-void

    .line 1518
    :catch_21
    move-exception v0

    .line 1519
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v1, "SlidingPaneLayout"

    const-string/jumbo v2, "Couldn\'t fetch getDisplayList method; dimming won\'t work right."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 1524
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2c
    move-exception v0

    .line 1525
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const-string/jumbo v1, "SlidingPaneLayout"

    const-string/jumbo v2, "Couldn\'t fetch mRecreateDisplayList field; dimming will be slow."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20
.end method


# virtual methods
.method public final invalidateChildRegion(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V
    .registers 6
    .param p1, "parent"    # Landroid/support/v4/widget/SlidingPaneLayout;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 1531
    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJB;->mGetDisplayList:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_23

    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJB;->mRecreateDisplayList:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_23

    .line 1533
    :try_start_8
    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJB;->mRecreateDisplayList:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    .line 1534
    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJB;->mGetDisplayList:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_14} :catch_18

    .line 1543
    :goto_14
    invoke-super {p0, p1, p2}, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplBase;->invalidateChildRegion(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V

    .line 1544
    :goto_17
    return-void

    .line 1535
    :catch_18
    move-exception v0

    .line 1536
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "SlidingPaneLayout"

    const-string/jumbo v2, "Error refreshing display list state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14

    .line 1540
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_23
    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    goto :goto_17
.end method
