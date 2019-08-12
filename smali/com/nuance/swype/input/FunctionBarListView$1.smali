.class Lcom/nuance/swype/input/FunctionBarListView$1;
.super Lcom/nuance/android/util/LruCache;
.source "FunctionBarListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/FunctionBarListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nuance/android/util/LruCache",
        "<",
        "Ljava/lang/Integer;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/FunctionBarListView;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/FunctionBarListView;I)V
    .locals 0
    .param p2, "x0"    # I

    .prologue
    .line 131
    iput-object p1, p0, Lcom/nuance/swype/input/FunctionBarListView$1;->this$0:Lcom/nuance/swype/input/FunctionBarListView;

    invoke-direct {p0, p2}, Lcom/nuance/android/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected entryRemoved(ZLjava/lang/Integer;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "evicted"    # Z
    .param p2, "key"    # Ljava/lang/Integer;
    .param p3, "oldValue"    # Landroid/graphics/Bitmap;
    .param p4, "newValue"    # Landroid/graphics/Bitmap;

    .prologue
    .line 137
    if-eqz p3, :cond_0

    .line 138
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    .line 139
    :cond_0
    return-void
.end method

.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Z
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Ljava/lang/Object;

    .prologue
    .line 131
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "x1":Ljava/lang/Object;
    check-cast p3, Landroid/graphics/Bitmap;

    .end local p3    # "x2":Ljava/lang/Object;
    check-cast p4, Landroid/graphics/Bitmap;

    .end local p4    # "x3":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/nuance/swype/input/FunctionBarListView$1;->entryRemoved(ZLjava/lang/Integer;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method
