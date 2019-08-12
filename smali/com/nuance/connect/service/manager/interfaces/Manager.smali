.class public interface abstract Lcom/nuance/connect/service/manager/interfaces/Manager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract deregister()V
.end method

.method public abstract destroy()V
.end method

.method public abstract getDependencies()[Ljava/lang/String;
.end method

.method public abstract getDependentCount()I
.end method

.method public abstract getIdleProperty()Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;
.end method

.method public abstract getManagerName()Ljava/lang/String;
.end method

.method public abstract getManagerStartState()Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;
.end method

.method public abstract incrementDependentCount()V
.end method

.method public abstract init()V
.end method

.method public abstract postInit()V
.end method

.method public abstract postStart()V
.end method

.method public abstract rebind()V
.end method

.method public abstract restart()V
.end method

.method public abstract start()V
.end method
