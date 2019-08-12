.class final Lcom/fsck/k9/preferences/Editor$1;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/preferences/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/fsck/k9/preferences/Editor;


# direct methods
.method constructor <init>(Lcom/fsck/k9/preferences/Editor;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/fsck/k9/preferences/Editor$1;->this$0:Lcom/fsck/k9/preferences/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    .line 83
    iget-object v6, p0, Lcom/fsck/k9/preferences/Editor$1;->this$0:Lcom/fsck/k9/preferences/Editor;

    invoke-static {v6}, Lcom/fsck/k9/preferences/Editor;->access$000(Lcom/fsck/k9/preferences/Editor;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 85
    iget-object v6, p0, Lcom/fsck/k9/preferences/Editor$1;->this$0:Lcom/fsck/k9/preferences/Editor;

    invoke-static {v6}, Lcom/fsck/k9/preferences/Editor;->access$100(Lcom/fsck/k9/preferences/Editor;)Lcom/fsck/k9/preferences/Storage;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fsck/k9/preferences/Storage;->removeAll()V

    .line 87
    :cond_0
    iget-object v6, p0, Lcom/fsck/k9/preferences/Editor$1;->this$0:Lcom/fsck/k9/preferences/Editor;

    invoke-static {v6}, Lcom/fsck/k9/preferences/Editor;->access$200(Lcom/fsck/k9/preferences/Editor;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 89
    .local v5, "removeKey":Ljava/lang/String;
    iget-object v6, p0, Lcom/fsck/k9/preferences/Editor$1;->this$0:Lcom/fsck/k9/preferences/Editor;

    invoke-static {v6}, Lcom/fsck/k9/preferences/Editor;->access$100(Lcom/fsck/k9/preferences/Editor;)Lcom/fsck/k9/preferences/Storage;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/fsck/k9/preferences/Storage;->remove(Ljava/lang/String;)V

    goto :goto_0

    .line 91
    .end local v5    # "removeKey":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/fsck/k9/preferences/Editor$1;->this$0:Lcom/fsck/k9/preferences/Editor;

    invoke-static {v6}, Lcom/fsck/k9/preferences/Editor;->access$300(Lcom/fsck/k9/preferences/Editor;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 93
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 94
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 95
    .local v3, "newValue":Ljava/lang/String;
    iget-object v6, p0, Lcom/fsck/k9/preferences/Editor$1;->this$0:Lcom/fsck/k9/preferences/Editor;

    iget-object v6, v6, Lcom/fsck/k9/preferences/Editor;->snapshot:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 96
    .local v4, "oldValue":Ljava/lang/String;
    iget-object v6, p0, Lcom/fsck/k9/preferences/Editor$1;->this$0:Lcom/fsck/k9/preferences/Editor;

    invoke-static {v6}, Lcom/fsck/k9/preferences/Editor;->access$000(Lcom/fsck/k9/preferences/Editor;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/fsck/k9/preferences/Editor$1;->this$0:Lcom/fsck/k9/preferences/Editor;

    invoke-static {v6}, Lcom/fsck/k9/preferences/Editor;->access$200(Lcom/fsck/k9/preferences/Editor;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 98
    :cond_3
    iget-object v6, p0, Lcom/fsck/k9/preferences/Editor$1;->this$0:Lcom/fsck/k9/preferences/Editor;

    invoke-static {v6}, Lcom/fsck/k9/preferences/Editor;->access$100(Lcom/fsck/k9/preferences/Editor;)Lcom/fsck/k9/preferences/Storage;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Lcom/fsck/k9/preferences/Storage;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 101
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "newValue":Ljava/lang/String;
    .end local v4    # "oldValue":Ljava/lang/String;
    :cond_4
    return-void
.end method
