Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F00BC143237
	for <lists+kexec@lfdr.de>; Mon, 20 Jan 2020 20:31:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:MIME-Version:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=G+OWcgPzgNj2B4ybDnX6vvriWgY1RpnS/Z5EE+TFVI0=; b=iNbRhRoEwHwRMz
	4xb2r7EU+3fqKwHXgMeRPt7Su9hl/Us7jcwY0DdjepOPgRUM6Ysp3So2sBhzGkDUzt9EW01H12EdI
	orIz8FH2BYCglIZPSOEEj4pVos4I/CUiUnfpHZ0F08fBHOSRNj8gR+MYANheYdMKPGPPhYzDk+FGR
	klcTdRRM152dvQHf+dIRY4jolnGmDGFLQ4/eez8X0OsTvYvwYyB64Nq0ryf3xI44SRB4mXOUF36bM
	tlmpyYLuOXRlCqPPQ1aJEK3ZjUGlYE+CHtrvckhDxhAS4AbaUsVqUpK05sS4w89TCGtXOhUf6EI4Q
	g/1WCRDEGGDlBGukhrkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itcm8-0002WQ-TO; Mon, 20 Jan 2020 19:31:52 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itcm1-0002W7-NO
 for kexec@lists.infradead.org; Mon, 20 Jan 2020 19:31:47 +0000
Received: by mail-ed1-x543.google.com with SMTP id c26so582758eds.8
 for <kexec@lists.infradead.org>; Mon, 20 Jan 2020 11:31:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=z7I/Kq2V0EnXiuoACdRbnwoAql3KZ080nwyXVjlruyU=;
 b=M0q4ZXIxKffpSgoI0gly/ffUdHpy9jsaHxHEKMEvcGPLYUC7PlB0rODmKa8tWDxd40
 tCZc1dHXwWRAXxf2VjdAh+yPFvTJs6wUuHbn39O8IURJlp4dGA2Mu4KQlXdKl3UYUSj1
 yLYN+wTtVQh3+iFVQ7yHttQGbYFR1DotwR4UGqcxPCZOoln92umXc40dWk2xZrPtRZ2r
 iEU5bwmExb2gBAzTO1lBoFOg3VBBIJr9YHpYI1mZUcCqyCHh76cY/fHHba4p9gpfLln2
 AJZ98os8N2he3XsG9MAVoQ66PP0OxbeM+lxxyvlryGQ6wdbZwTpkHwm/arlvDF3ez702
 BfLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=z7I/Kq2V0EnXiuoACdRbnwoAql3KZ080nwyXVjlruyU=;
 b=LAxtIFHWxLmUQ13RVRBuB+8zL7CF1UoQUQRvopP+bLfR6DRh5IZ8M/2EdeJPPRIEaJ
 9xD71U3AV/mAg0HsJeMD1DpZ3mgbA115MQB+RauL5rgTjreHJ3mz5/sxZG9Y6DBnOIy7
 60yp6j2kZnHmQ/tGjav1OSRhKTVBleUOHG1LYKoPAhiOuTn1zFWxzRNIgbJzcg0G5ZjL
 pn/Aom4Wm2grE9KJYDprPk167o1s26gSnBjJsnNwnU09qTqvXSqDCLMQJExD5PHmNl1q
 DWJ4RntLrwJMEJuQ+XpBDr0Ar6bo/31rQneWNW4unhJb8KZ18h1tXxQCpe31/fn1BPJD
 XMuw==
X-Gm-Message-State: APjAAAXhRcV9mQj0omrRAnuxIG6Z0ilsaWDUGa73xKlRIFBloJTXuSXV
 I3UkNorL692BM7ZOhgDpgViA/xZTbcAijSOlc8U=
X-Google-Smtp-Source: APXvYqyyHCt77EM14GOE0KDBunDOHxN6fvLcd+bHFjIrRiWNig2VfZD4wYLew0G+jUHBVjpQBMTrVK9EHxMOQH0VwTg=
X-Received: by 2002:a05:6402:c9c:: with SMTP id
 cm28mr670324edb.88.1579548703499; 
 Mon, 20 Jan 2020 11:31:43 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6402:22dc:0:0:0:0 with HTTP; Mon, 20 Jan 2020 11:31:43
 -0800 (PST)
From: "Prof, William Roberts" <eco.bank1204@gmail.com>
Date: Mon, 20 Jan 2020 20:31:43 +0100
Message-ID: <CAOE+jABNCjHKFENN-Ek5YiJ5dzzDMN5vwD4KOGExG-PeQ=t=0Q@mail.gmail.com>
Subject: Contact Diplomatic Agent, Mr. Mcclaine John to receive your ATM CARD
 valued the sum of $12.8Million United States Dollars
To: undisclosed-recipients:;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_113145_764753_36826113 
X-CRM114-Status: SPAM  (  -5.22  )
X-Spam-Score: 3.6 (+++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (3.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [eco.bank1204[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [eco.bank1204[at]gmail.com]
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit [mcclainejohn.13[at]gmail.com]
 0.0 DEAR_BENEFICIARY       BODY: Dear Beneficiary:
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain 0.0 LOTS_OF_MONEY          Huge... sums of money
 1.0 FREEMAIL_REPLYTO       Reply-To/From or Reply-To/body contain
 different freemails
 0.8 MONEY_ATM_CARD         Lots of money on an ATM card
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
 information
 1.2 MONEY_FORM_SHORT       Lots of money if you fill out a short form
 0.0 T_FILL_THIS_FORM_FRAUD_PHISH Answer suspicious question(s)
 0.2 FORM_FRAUD_5           Fill a form and many fraud phrases
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
Reply-To: mcclainejohn.13@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Attn: Dear Beneficiary,

I wish to inform you that the diplomatic agent conveying your ATM CARD
valued the sum of $12.8Million United States Dollars has misplaced
your address and he is currently stranded at (George Bush
International Airport) Houston Texas USA now
We required you to reconfirm the following information's below to him
so that he can deliver your Payment CARD to you today or tomorrow
morning as information provided with open communications via email and
telephone for security reasons.
HERE IS THE DETAILS  HE NEED FROM YOU URGENT
YOUR FULL NAME:========
ADDRESS:========
MOBILE NO:========
NAME OF YOUR NEAREST AIRPORT:========
A COPY OF YOUR IDENTIFICATION :========

Note; do contact the diplomatic agent immediately through the
information's listed below
Contact Person: Diplomatic Agent, Mr. Mcclaine John
EMAIL: mcclainejohn.13@gmail.com
Tel:(223) 777-7518

Contact the diplomatic agent immediately
because he is waiting to hear from you today with the needed information's.

NOTE: The Diplomatic agent does not know that the content of the
consignment box is $12.800,000,00 Million United States Dollars and on
no circumstances should you let him know the content. The consignment
was moved from here as family treasures, so never allow him to open
the box. Please I have paid delivery fees for you but the only money
you must send to Mcclaine John is your ATM CARD delivery fee $25.00
only. text Him as you contact Him Immediately

Thanks,
with Regards.
Prof, William Roberts
Director DHL COURIER SERVICES-Benin

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
