package belfius.depd.tracesgenerator.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@Slf4j
@RequestMapping({"/hello"})
public class TestController {

    @GetMapping(produces = {"application/json"})
    public String test(){
        log.info("Hello Test!");
        return "Hello Test!";
    }
}
