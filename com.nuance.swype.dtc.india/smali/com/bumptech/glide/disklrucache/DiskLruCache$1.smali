.class final Lcom/bumptech/glide/disklrucache/DiskLruCache$1;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/disklrucache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/disklrucache/DiskLruCache;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$1;->this$0:Lcom/bumptech/glide/disklrucache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private call()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 162
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$1;->this$0:Lcom/bumptech/glide/disklrucache/DiskLruCache;

    monitor-enter v1

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$1;->this$0:Lcom/bumptech/glide/disklrucache/DiskLruCache;

    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->access$000(Lcom/bumptech/glide/disklrucache/DiskLruCache;)Ljava/io/Writer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 164
    monitor-exit v1

    .line 172
    :goto_0
    return-object v2

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$1;->this$0:Lcom/bumptech/glide/disklrucache/DiskLruCache;

    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->access$100(Lcom/bumptech/glide/disklrucache/DiskLruCache;)V

    .line 167
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$1;->this$0:Lcom/bumptech/glide/disklrucache/DiskLruCache;

    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->access$200(Lcom/bumptech/glide/disklrucache/DiskLruCache;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$1;->this$0:Lcom/bumptech/glide/disklrucache/DiskLruCache;

    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->access$300(Lcom/bumptech/glide/disklrucache/DiskLruCache;)V

    .line 169
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$1;->this$0:Lcom/bumptech/glide/disklrucache/DiskLruCache;

    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->access$402$7553e83e(Lcom/bumptech/glide/disklrucache/DiskLruCache;)I

    .line 171
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
