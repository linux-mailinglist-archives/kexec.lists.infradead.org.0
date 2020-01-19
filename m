Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07596141FA6
	for <lists+kexec@lfdr.de>; Sun, 19 Jan 2020 19:46:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:MIME-Version:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HARoXWdDS8y9MLoot872a5WGTyHg4AjY062zqte1Jnw=; b=iJJ090RE632s+3
	cBnrX+1O7I9zKiRfByWcrTP2989eb/34ik7EBlLbuE+32oFADwRrXdDeneZnBuulM1TGq81H6Ze5p
	Obgzraq2yDQQmmOhzD7d/+FXOexTSdY43rFUgSLMoPthZ16xYRuRmuWKunVrWgY6B2orWZpWAFPSg
	ourS+mmrTAVq42LkTw9/Hu+axTCDPRX2b9j5PJa+1YMknvYySXQGBUcAgpZaEhvdJCfgAqVonob9Y
	GMAZ2hDj7VYWAUc4WRoAVMx7QzzK5S89RSQgyAc8Zmf2SS2GzPW/83/X3R4PNpckqD2VBNiWusOoi
	fG7dcDpLPvuLtTqiKU9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itFa9-00079X-Qj; Sun, 19 Jan 2020 18:45:57 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itFa3-000790-9f
 for kexec@lists.infradead.org; Sun, 19 Jan 2020 18:45:52 +0000
Received: by mail-io1-xd42.google.com with SMTP id t26so31380163ioi.13
 for <kexec@lists.infradead.org>; Sun, 19 Jan 2020 10:45:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=/o+CA7VDRA7UR3HGeT8+/tYzwEnOXwq5B8ZHP2/HeYc=;
 b=rpqePd5/CzppJd4wqcWanmtPxOfFG4Nc66GxX2k/w/fBV7Vw5mXtmXyoXs1hQoxbXG
 qjskcaHxhcGcUw0NiP8KPS8whjASA2iPb/ZAF9Ace3Ki+BJQxsBYMBsnjPb85WmvdIk+
 3okAWJCtpPV5DpxbUGM8ocHq/QMz3iX8oFmI9CGGF/sXyySmzgJdRm57NWn/zm5a24uf
 aEZzfH8g2vbIpgN00WAsDSeB5E7fFgULswZtxIZR3SCAtJAIlbZNFPKKEMUMibN5LVSn
 gTUs0KKKdik3c1Qc2Zj2KXWImyF7a3QD15GBlMNHk71ks7QA+EJEEjEgs4tci1KGxPQD
 ds+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=/o+CA7VDRA7UR3HGeT8+/tYzwEnOXwq5B8ZHP2/HeYc=;
 b=QxVDTCzWrwvlrfsA+8rtGnpy2mMQUjRItrSewmnBtajVtHf3Bf5Y2RANqbveD9U4hi
 elFk8JUvW1ZOuBDL04pcfuPuJ7JSX5HVUUDGrk2fEBw28wxsv292NeW2TGXlZVScRBN5
 rlbUE9EnBYc3GVB9WPR+QcG5xOmIU5d5xFMfzWbc5kITElV37wRAPIBYYorq6BEOykEq
 V0Mzbkwc13RyUbVFn6JmJD6C4BHSJ2nZhikiwBaKHXOLECkGsMJH1bND/rHzhjECRBco
 si9v2gyyL9dtwCZQsmsJ56pbPePxu0l4ou/JU8P/g8/D/gbuwZUt924A6x+7e6O/Tplq
 KQdw==
X-Gm-Message-State: APjAAAUAqBIlGrGUERiamuzZqzksdnvrKhFITAY/u7unSp8YPup/6Eix
 /8yGUWh40gHkgIxlY2bRabXivye3LIJWnwtnaDw=
X-Google-Smtp-Source: APXvYqzt233Nput32b0aWEDsUo8OF6DC9AJflBSZgE/7SW5uAIAHlXbzCjD11bgQOXKRuJBYIb+HDz+1gbg0IZduKwk=
X-Received: by 2002:a5e:de42:: with SMTP id e2mr39738251ioq.228.1579459550682; 
 Sun, 19 Jan 2020 10:45:50 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a02:95c8:0:0:0:0:0 with HTTP; Sun, 19 Jan 2020 10:45:50
 -0800 (PST)
From: Favor Desmond <contecindy5@gmail.com>
Date: Sun, 19 Jan 2020 18:45:50 +0000
Message-ID: <CAOfCPNy8UGJfY1SWURpHYwDSx6LhAGz=hThLCvfnhTvoiFfBzg@mail.gmail.com>
Subject: HELLO
To: undisclosed-recipients:;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_104551_336979_0D27314E 
X-CRM114-Status: UNSURE (  -1.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [contecindy5[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [contecindy5[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.0 FREEMAIL_REPLYTO       Reply-To/From or Reply-To/body contain
 different freemails
X-BeenThere: kexec@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <kexec.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/kexec/>
List-Post: <mailto:kexec@lists.infradead.org>
List-Help: <mailto:kexec-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=subscribe>
Reply-To: favordens@email.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hello Dear
Greetings to you,I am Favor Desmond from Ivory coast currently living
in  Togo Republic,I would like to know you more, so that i can tell
you little amount myself and my photo, email address is
favordens@email.com
Thanks
Favor

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
