.class public Lcom/nuance/connect/store/MigrationStore;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/store/PersistentDataStore;


# static fields
.field private static final log:Lcom/nuance/connect/util/Logger$Log;


# instance fields
.field private final destination:Lcom/nuance/connect/store/PersistentDataStore;

.field private final keys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final source:Lcom/nuance/connect/store/PersistentDataStore;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    const-class v1, Lcom/nuance/connect/store/MigrationStore;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/store/MigrationStore;->log:Lcom/nuance/connect/util/Logger$Log;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/connect/store/PersistentDataStore;Lcom/nuance/connect/store/PersistentDataStore;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/store/MigrationStore;->keys:Ljava/util/Set;

    iput-object p1, p0, Lcom/nuance/connect/store/MigrationStore;->source:Lcom/nuance/connect/store/PersistentDataStore;

    iput-object p2, p0, Lcom/nuance/connect/store/MigrationStore;->destination:Lcom/nuance/connect/store/PersistentDataStore;

    return-void
.end method

.method private migrateKey(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/store/MigrationStore;->keys:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/nuance/connect/store/MigrationStore;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "migrating key: "

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/store/MigrationStore;->keys:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nuance/connect/store/MigrationStore;->source:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-interface {v0, p1}, Lcom/nuance/connect/store/PersistentDataStore;->delete(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/store/MigrationStore;->source:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-interface {v0}, Lcom/nuance/connect/store/PersistentDataStore;->clear()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/store/MigrationStore;->destination:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-interface {v0}, Lcom/nuance/connect/store/PersistentDataStore;->clear()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public delete(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/store/MigrationStore;->keys:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/store/MigrationStore;->source:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-interface {v0, p1}, Lcom/nuance/connect/store/PersistentDataStore;->delete(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/store/MigrationStore;->keys:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/nuance/connect/store/MigrationStore;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "migrating key: "

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/store/MigrationStore;->destination:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-interface {v0, p1}, Lcom/nuance/connect/store/PersistentDataStore;->delete(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public exists(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/store/MigrationStore;->keys:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nuance/connect/store/MigrationStore;->source:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-interface {v0, p1}, Lcom/nuance/connect/store/PersistentDataStore;->exists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/store/MigrationStore;->destination:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-interface {v0, p1}, Lcom/nuance/connect/store/PersistentDataStore;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nuance/connect/store/MigrationStore;->destination:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-interface {v0, p1}, Lcom/nuance/connect/store/PersistentDataStore;->exists(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public readBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/store/MigrationStore;->keys:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/store/MigrationStore;->keys:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/nuance/connect/store/MigrationStore;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "migrating key: "

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/store/MigrationStore;->source:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-interface {v0, p1}, Lcom/nuance/connect/store/PersistentDataStore;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/store/MigrationStore;->source:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-interface {v0, p1, p2}, Lcom/nuance/connect/store/PersistentDataStore;->readBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/store/MigrationStore;->destination:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->saveBoolean(Ljava/lang/String;Z)Z

    iget-object v1, p0, Lcom/nuance/connect/store/MigrationStore;->source:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-interface {v1, p1}, Lcom/nuance/connect/store/PersistentDataStore;->delete(Ljava/lang/String;)Z

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/store/MigrationStore;->destination:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-interface {v0, p1, p2}, Lcom/nuance/connect/store/PersistentDataStore;->readBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public readBoolean(Ljava/lang/String;Z)Z
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/store/MigrationStore;->keys:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/store/MigrationStore;->keys:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/nuance/connect/store/MigrationStore;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "migrating key: "

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/store/MigrationStore;->source:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-interface {v0, p1}, Lcom/nuance/connect/store/PersistentDataStore;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/store/MigrationStore;->source:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-interface {v0, p1, p2}, Lcom/nuance/connect/store/PersistentDataStore;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Lcom/nuance/connect/store/MigrationStore;->destination:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-interface {v1, p1, v0}, Lcom/nuance/connect/store/PersistentDataStore;->saveBoolean(Ljava/lang/String;Z)Z

    iget-object v1, p0, Lcom/nuance/connect/store/MigrationStore;->source:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-interface {v1, p1}, Lcom/nuance/connect/store/PersistentDataStore;->delete(Ljava/lang/String;)Z

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/store/MigrationStore;->destination:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-interface {v0, p1, p2}, Lcom/nuance/connect/store/PersistentDataStore;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public readInt(Ljava/lang/String;I)I
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/store/MigrationStore;->keys:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/store/MigrationStore;->keys:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/nuance/connect/store/MigrationStore;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "migrating key: "

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/store/MigrationStore;->source:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-interface {v0, p1}, Lcom/nuance/connect/store/PersistentDataStore;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/store/MigrationStore;->source:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-interface {v0, p1, p2}, Lcom/nuance/connect/store/PersistentDataStore;->readInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/nuance/connect/store/MigrationStore;->destination:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-interface {v1, p1, v0}, Lcom/nuance/connect/store/PersistentDataStore;->saveInt(Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/nuance/connect/store/MigrationStore;->source:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-interface {v1, p1}, Lcom/nuance/connect/store/PersistentDataStore;->delete(Ljava/lang/String;)Z

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/store/MigrationStore;->destination:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-interface {v0, p1, p2}, Lcom/nuance/connect/store/PersistentDataStore;->readInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public readLong(Ljava/lang/String;J)J
    .locals 4

    iget-object v0, p0, Lcom/nuance/connect/store/MigrationStore;->keys:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/store/MigrationStore;->keys:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/nuance/connect/store/MigrationStore;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "migrating key: "

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/store/MigrationStore;->source:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-interface {v0, p1}, Lcom/nuance/connect/store/PersistentDataStore;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/store/MigrationStore;->source:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-interface {v0, p1, p2, p3}, Lcom/nuance/connect/store/PersistentDataStore;->readLong(Ljava/lang/String;J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/nuance/connect/store/MigrationStore;->destination:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-interface {v2, p1, v0, v1}, Lcom/nuance/connect/store/PersistentDataStore;->saveLong(Ljava/lang/String;J)Z

    iget-object v2, p0, Lcom/nuance/connect/store/MigrationStore;->source:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-interface {v2, p1}, Lcom/nuance/connect/store/PersistentDataStore;->delete(Ljava/lang/String;)Z

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/store/MigrationStore;->destination:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-interface {v0, p1, p2, p3}, Lcom/nuance/connect/store/PersistentDataStore;->readLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public readObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/store/MigrationStore;->keys:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/store/MigrationStore;->keys:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/nuance/connect/store/MigrationStore;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "migrating key: "

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/store/MigrationStore;->source:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-interface {v0, p1}, Lcom/nuance/connect/store/PersistentDataStore;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/store/MigrationStore;->source:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-interface {v0, p1}, Lcom/nuance/connect/store/PersistentDataStore;->readObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/store/MigrationStore;->destination:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-interface {v1, p1, v0}, Lcom/nuance/connect/store/PersistentDataStore;->saveObject(Ljava/lang/String;Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/nuance/connect/store/MigrationStore;->source:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-interface {v1, p1}, Lcom/nuance/connect/store/PersistentDataStore;->delete(Ljava/lang/String;)Z

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/store/MigrationStore;->destination:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-interface {v0, p1}, Lcom/nuance/connect/store/PersistentDataStore;->readObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/store/MigrationStore;->keys:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/store/MigrationStore;->keys:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/nuance/connect/store/MigrationStore;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "migrating key: "

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/store/MigrationStore;->source:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-interface {v0, p1}, Lcom/nuance/connect/store/PersistentDataStore;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/store/MigrationStore;->source:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-interface {v0, p1, p2}, Lcom/nuance/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/store/MigrationStore;->destination:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-interface {v1, p1, v0}, Lcom/nuance/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/nuance/connect/store/MigrationStore;->source:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-interface {v1, p1}, Lcom/nuance/connect/store/PersistentDataStore;->delete(Ljava/lang/String;)Z

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/store/MigrationStore;->destination:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-interface {v0, p1, p2}, Lcom/nuance/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public saveBoolean(Ljava/lang/String;Z)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/nuance/connect/store/MigrationStore;->migrateKey(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/store/MigrationStore;->destination:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-interface {v0, p1, p2}, Lcom/nuance/connect/store/PersistentDataStore;->saveBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public saveInt(Ljava/lang/String;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/nuance/connect/store/MigrationStore;->migrateKey(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/store/MigrationStore;->destination:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-interface {v0, p1, p2}, Lcom/nuance/connect/store/PersistentDataStore;->saveInt(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public saveLong(Ljava/lang/String;J)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/nuance/connect/store/MigrationStore;->migrateKey(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/store/MigrationStore;->destination:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-interface {v0, p1, p2, p3}, Lcom/nuance/connect/store/PersistentDataStore;->saveLong(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public saveObject(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/nuance/connect/store/MigrationStore;->migrateKey(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/store/MigrationStore;->destination:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-interface {v0, p1, p2}, Lcom/nuance/connect/store/PersistentDataStore;->saveObject(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public saveString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/nuance/connect/store/MigrationStore;->migrateKey(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/store/MigrationStore;->destination:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-interface {v0, p1, p2}, Lcom/nuance/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
