package com.web.pojo.record.net.res;
import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import lombok.Builder;
import lombok.Getter;


@Builder
@Getter
public class GeneralRes {
    @Builder.Default
    private boolean success = true;

    private Object data;
    private String message;
}
