.class public final Lcom/bumptech/glide/GenericTranscodeRequest;
.super Lcom/bumptech/glide/GenericRequestBuilder;
.source "GenericTranscodeRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        "DataType:",
        "Ljava/lang/Object;",
        "ResourceType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/GenericRequestBuilder",
        "<TModelType;TDataType;TResourceType;TResourceType;>;"
    }
.end annotation


# instance fields
.field private final dataClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TDataType;>;"
        }
    .end annotation
.end field

.field private final modelLoader:Lcom/bumptech/glide/load/model/ModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TModelType;TDataType;>;"
        }
    .end annotation
.end field

.field private final optionsApplier:Lcom/bumptech/glide/RequestManager$OptionsApplier;

.field private final resourceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TResourceType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/Glide;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/manager/RequestTracker;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/RequestManager$OptionsApplier;)V
    .registers 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "glide"    # Lcom/bumptech/glide/Glide;
    .param p7, "requestTracker"    # Lcom/bumptech/glide/manager/RequestTracker;
    .param p8, "lifecycle"    # Lcom/bumptech/glide/manager/Lifecycle;
    .param p9, "optionsApplier"    # Lcom/bumptech/glide/RequestManager$OptionsApplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/Glide;",
            "Ljava/lang/Class",
            "<TModelType;>;",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TModelType;TDataType;>;",
            "Ljava/lang/Class",
            "<TDataType;>;",
            "Ljava/lang/Class",
            "<TResourceType;>;",
            "Lcom/bumptech/glide/manager/RequestTracker;",
            "Lcom/bumptech/glide/manager/Lifecycle;",
            "Lcom/bumptech/glide/RequestManager$OptionsApplier;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lcom/bumptech/glide/GenericTranscodeRequest;, "Lcom/bumptech/glide/GenericTranscodeRequest<TModelType;TDataType;TResourceType;>;"
    .local p3, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TModelType;>;"
    .local p4, "modelLoader":Lcom/bumptech/glide/load/model/ModelLoader;, "Lcom/bumptech/glide/load/model/ModelLoader<TModelType;TDataType;>;"
    .local p5, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TDataType;>;"
    .local p6, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TResourceType;>;"
    invoke-static {}, Lcom/bumptech/glide/load/resource/transcode/UnitTranscoder;->get()Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    move-result-object v1

    .line 1041
    invoke-virtual {p2, p5, p6}, Lcom/bumptech/glide/Glide;->buildDataProvider(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/provider/DataLoadProvider;

    move-result-object v2

    .line 1042
    new-instance v4, Lcom/bumptech/glide/provider/FixedLoadProvider;

    invoke-direct {v4, p4, v1, v2}, Lcom/bumptech/glide/provider/FixedLoadProvider;-><init>(Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lcom/bumptech/glide/provider/DataLoadProvider;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v5, p6

    move-object v6, p2

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 60
    invoke-direct/range {v1 .. v8}, Lcom/bumptech/glide/GenericRequestBuilder;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/RequestTracker;Lcom/bumptech/glide/manager/Lifecycle;)V

    .line 62
    iput-object p4, p0, Lcom/bumptech/glide/GenericTranscodeRequest;->modelLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    .line 63
    iput-object p5, p0, Lcom/bumptech/glide/GenericTranscodeRequest;->dataClass:Ljava/lang/Class;

    .line 64
    iput-object p6, p0, Lcom/bumptech/glide/GenericTranscodeRequest;->resourceClass:Ljava/lang/Class;

    .line 65
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/bumptech/glide/GenericTranscodeRequest;->optionsApplier:Lcom/bumptech/glide/RequestManager$OptionsApplier;

    .line 66
    return-void
.end method
