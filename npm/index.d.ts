declare module '@apiverve/partsofspeech' {
  export interface partsofspeechOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface partsofspeechResponse {
    status: string;
    error: string | null;
    data: PartsOfSpeechData;
    code?: number;
  }


  interface PartsOfSpeechData {
      partofspeech: string;
      result:       string[];
      count:        number;
  }

  export default class partsofspeechWrapper {
    constructor(options: partsofspeechOptions);

    execute(callback: (error: any, data: partsofspeechResponse | null) => void): Promise<partsofspeechResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: partsofspeechResponse | null) => void): Promise<partsofspeechResponse>;
    execute(query?: Record<string, any>): Promise<partsofspeechResponse>;
  }
}
