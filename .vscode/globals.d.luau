declare function getgenv(): { [any]: any }
declare function cloneref(object: Instance): Instance
declare function queue_on_teleport(source: string)

declare class DataModel extends ServiceProvider
    GameId: number
    PlaceId: number
    function IsLoaded(self): boolean
    function HttpGet(self, url: string): string
end

declare game: DataModel
declare script_key: string?