.class final Lcom/nuance/swype/widget/LoadingImageView$LoadingTask;
.super Landroid/os/AsyncTask;
.source "LoadingImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/widget/LoadingImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoadingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private loadedBitmap:Landroid/graphics/Bitmap;

.field private opts:Landroid/graphics/BitmapFactory$Options;

.field private res:Landroid/content/res/Resources;

.field private resId:I

.field private viewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nuance/swype/widget/LoadingImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nuance/swype/widget/LoadingImageView;Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)V
    .locals 3
    .param p1, "view"    # Lcom/nuance/swype/widget/LoadingImageView;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "resId"    # I
    .param p4, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 192
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 193
    sget-object v0, Lcom/nuance/swype/widget/LoadingImageView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "LoadingTask, new task, resId:"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 194
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nuance/swype/widget/LoadingImageView$LoadingTask;->viewRef:Ljava/lang/ref/WeakReference;

    .line 195
    iput p3, p0, Lcom/nuance/swype/widget/LoadingImageView$LoadingTask;->resId:I

    .line 196
    iput-object p4, p0, Lcom/nuance/swype/widget/LoadingImageView$LoadingTask;->opts:Landroid/graphics/BitmapFactory$Options;

    .line 197
    iput-object p2, p0, Lcom/nuance/swype/widget/LoadingImageView$LoadingTask;->res:Landroid/content/res/Resources;

    .line 198
    return-void
.end method

.method private clearRefs()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 243
    sget-object v1, Lcom/nuance/swype/widget/LoadingImageView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "LoadingTask, clearRefs, resId:"

    iget v3, p0, Lcom/nuance/swype/widget/LoadingImageView$LoadingTask;->resId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 245
    iget-object v1, p0, Lcom/nuance/swype/widget/LoadingImageView$LoadingTask;->viewRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 246
    iget-object v1, p0, Lcom/nuance/swype/widget/LoadingImageView$LoadingTask;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/widget/LoadingImageView;

    .line 247
    .local v0, "view":Lcom/nuance/swype/widget/LoadingImageView;
    if-eqz v0, :cond_0

    .line 249
    const/4 v1, 0x0

    iput v1, v0, Lcom/nuance/swype/widget/LoadingImageView;->imageId:I

    .line 253
    .end local v0    # "view":Lcom/nuance/swype/widget/LoadingImageView;
    :cond_0
    iput-object v4, p0, Lcom/nuance/swype/widget/LoadingImageView$LoadingTask;->viewRef:Ljava/lang/ref/WeakReference;

    .line 254
    iput-object v4, p0, Lcom/nuance/swype/widget/LoadingImageView$LoadingTask;->res:Landroid/content/res/Resources;

    .line 255
    iput-object v4, p0, Lcom/nuance/swype/widget/LoadingImageView$LoadingTask;->opts:Landroid/graphics/BitmapFactory$Options;

    .line 256
    return-void
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 184
    sget-object v0, Lcom/nuance/swype/widget/LoadingImageView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "LoadingTask, begin decode in doInBackground, resId:"

    iget v2, p0, Lcom/nuance/swype/widget/LoadingImageView$LoadingTask;->resId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swype/widget/LoadingImageView$LoadingTask;->res:Landroid/content/res/Resources;

    iget v1, p0, Lcom/nuance/swype/widget/LoadingImageView$LoadingTask;->resId:I

    iget-object v2, p0, Lcom/nuance/swype/widget/LoadingImageView$LoadingTask;->opts:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/widget/LoadingImageView$LoadingTask;->loadedBitmap:Landroid/graphics/Bitmap;

    sget-object v0, Lcom/nuance/swype/widget/LoadingImageView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "LoadingTask, doInBackground, loadedBitmap:"

    iget-object v2, p0, Lcom/nuance/swype/widget/LoadingImageView$LoadingTask;->loadedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swype/widget/LoadingImageView$LoadingTask;->loadedBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected final onCancelled()V
    .locals 3

    .prologue
    .line 234
    iget-object v0, p0, Lcom/nuance/swype/widget/LoadingImageView$LoadingTask;->loadedBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 235
    sget-object v0, Lcom/nuance/swype/widget/LoadingImageView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "LoadingTask, onCancelled recycle loadedBitmap: "

    iget-object v2, p0, Lcom/nuance/swype/widget/LoadingImageView$LoadingTask;->loadedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 236
    iget-object v0, p0, Lcom/nuance/swype/widget/LoadingImageView$LoadingTask;->loadedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 237
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/widget/LoadingImageView$LoadingTask;->loadedBitmap:Landroid/graphics/Bitmap;

    .line 239
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/widget/LoadingImageView$LoadingTask;->clearRefs()V

    .line 240
    return-void
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 5
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 184
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/nuance/swype/widget/LoadingImageView$LoadingTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nuance/swype/widget/LoadingImageView$LoadingTask;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/widget/LoadingImageView;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/nuance/swype/widget/LoadingImageView;->access$000(Lcom/nuance/swype/widget/LoadingImageView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget-object v1, Lcom/nuance/swype/widget/LoadingImageView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "LoadingTask, onPostExecute resId: "

    iget v3, p0, Lcom/nuance/swype/widget/LoadingImageView$LoadingTask;->resId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "...setImageBitmap loadedBitmap: "

    invoke-virtual {v1, v2, v3, v4, p1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_0

    invoke-static {}, Lcom/nuance/swype/widget/LoadingImageView;->access$100()Lcom/nuance/swype/input/DrawBufferManager;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/nuance/swype/widget/LoadingImageView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "LoadingTask, onPostExecute addObjectToCache "

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    invoke-static {}, Lcom/nuance/swype/widget/LoadingImageView;->access$100()Lcom/nuance/swype/input/DrawBufferManager;

    move-result-object v1

    iget v2, p0, Lcom/nuance/swype/widget/LoadingImageView$LoadingTask;->resId:I

    invoke-virtual {v1, v2, p1}, Lcom/nuance/swype/input/DrawBufferManager;->addObjectToCache(ILjava/lang/Object;)V

    :cond_0
    invoke-static {v0}, Lcom/nuance/swype/widget/LoadingImageView;->access$200$39c4b54f(Lcom/nuance/swype/widget/LoadingImageView;)V

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/nuance/swype/widget/LoadingImageView$LoadingTask;->clearRefs()V

    return-void

    :cond_2
    if-eqz p1, :cond_1

    sget-object v0, Lcom/nuance/swype/widget/LoadingImageView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "LoadingTask, onPostExecute recycle loadedBitmap: "

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method
