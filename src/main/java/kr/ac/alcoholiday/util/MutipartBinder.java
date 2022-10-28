package kr.ac.alcoholiday.util;

import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

public class MutipartBinder {

    public String binding(MultipartFile target) {

        String fileOriginName = target.getOriginalFilename();

        String fileExtention = fileOriginName.substring(fileOriginName.lastIndexOf("."), fileOriginName.length());
        String uploadFolder = "C://img//";

        UUID uuid = UUID.randomUUID();

        String[] uuids = uuid.toString().split("-");

        String unique = uuids[0];

        File saveFile = new File(uploadFolder + "//" + unique + fileExtention);

        try {
            target.transferTo(saveFile);
        } catch (IllegalStateException | IOException e) {
            e.printStackTrace();
        }

        return unique + fileExtention;
    }
}
