declare module '@apiverve/partsofspeech' {
  export interface partsofspeechOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface partsofspeechResponse {
    status: string;
    error: string | null;
    data: PartsOfSpeechData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface PartsOfSpeechData {
      partofspeech: null | string;
      result:       (null | string)[];
      count:        number | null;
  }

  export default class partsofspeechWrapper {
    constructor(options: partsofspeechOptions);

    execute(callback: (error: any, data: partsofspeechResponse | null) => void): Promise<partsofspeechResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: partsofspeechResponse | null) => void): Promise<partsofspeechResponse>;
    execute(query?: Record<string, any>): Promise<partsofspeechResponse>;
  }
}
