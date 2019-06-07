Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18348385CC
	for <lists+kexec@lfdr.de>; Fri,  7 Jun 2019 09:55:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:Message-ID:From:
	Date:Reply-To:To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TfPzRUAiO5MCgB39/Iw3Pb4IZpZKqAvGqKR4R4ZKrX8=; b=Hi64/QDUz85m+3
	rV2ltN82TJV3nLmgf+LTk1a/9y7KVgJm7pBeoA5yyyRznarckYXYCPF712ZWxrq43SZu0kVh2qayL
	7nedh63f6s/xvWgejn7HFtCkDNY7L6TcIiZzw7UrBwLBYgvlmQ6eLzgiejxTm1m4n2H9XJ+5MYqXv
	cGeIKkt1rclE3KmsOnucxOHhRe2mho2RFVkrda6eX/dF7QvOH+y/MICSqZtOMcn9z+L2WY1N+5n8K
	1Pw2pJwsdkI1xh43FwhcnsjkrDTQlOeGMV5E15bMa9xMaRj1t9rveBVNbfMo8xP+YSqQkylIHLEwa
	z0EElxVOOL/ZNeHAYVNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZ9iu-0005cU-S9; Fri, 07 Jun 2019 07:55:40 +0000
Received: from smtp4.iitb.ac.in ([103.21.127.18] helo=smtp1.iitb.ac.in)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZ9iq-0005be-LZ
 for kexec@lists.infradead.org; Fri, 07 Jun 2019 07:55:38 +0000
Received: from ldns2.iitb.ac.in (ldns2.iitb.ac.in [10.200.12.2])
 by smtp1.iitb.ac.in (Postfix) with SMTP id B0628105099C
 for <kexec@lists.infradead.org>; Fri,  7 Jun 2019 12:01:43 +0530 (IST)
Received: (qmail 29928 invoked by uid 510); 7 Jun 2019 12:01:34 +0530
X-Qmail-Scanner-Diagnostics: from 10.200.1.25 by ldns2 (envelope-from
 <rws@aero.iitb.ac.in>, uid 501) with qmail-scanner-2.11
 spamassassin: 3.4.1. mhr: 1.0. {clamdscan: 0.100.0/25472} 
 Clear:RC:1(10.200.1.25):SA:0(1.5/7.0):. Processed in 3.271093 secs;
 07 Jun 2019 12:01:34 +0530
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on ldns2.iitb.ac.in
X-Spam-Level: *
X-Spam-Status: No, score=1.5 required=7.0 tests=BAYES_50,IITB_ORIG,
 MISSING_HEADERS,PROPER_IITB_MSGID autolearn=disabled version=3.4.1
X-Spam-Pyzor: Reported 1 times.
X-Envelope-From: rws@aero.iitb.ac.in
X-Qmail-Scanner-Mime-Attachments: |
X-Qmail-Scanner-Zip-Files: |
Received: from unknown (HELO ldns2.iitb.ac.in) (10.200.1.25)
 by ldns2.iitb.ac.in with SMTP; 7 Jun 2019 12:01:30 +0530
Received: from vayu.aero.iitb.ac.in (vayu.aero.iitb.ac.in [10.101.1.1])
 by ldns2.iitb.ac.in (Postfix) with ESMTP id 217AF3418E8;
 Fri,  7 Jun 2019 12:01:17 +0530 (IST)
Received: from localhost (localhost [127.0.0.1])
 by vayu.aero.iitb.ac.in (Postfix) with ESMTP id A628E8902E54F;
 Fri,  7 Jun 2019 12:01:16 +0530 (IST)
Received: from vayu.aero.iitb.ac.in ([127.0.0.1])
 by localhost (vayu.aero.iitb.ac.in [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id FrMFcNjrnfJP; Fri,  7 Jun 2019 12:01:16 +0530 (IST)
Received: from localhost (localhost [127.0.0.1])
 by vayu.aero.iitb.ac.in (Postfix) with ESMTP id B09E28902E52F;
 Fri,  7 Jun 2019 12:01:13 +0530 (IST)
X-Virus-Scanned: amavisd-new at aero.iitb.ac.in
Received: from vayu.aero.iitb.ac.in ([127.0.0.1])
 by localhost (vayu.aero.iitb.ac.in [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id nIOVfjAWuQBS; Fri,  7 Jun 2019 12:01:13 +0530 (IST)
Received: from vayu.aero.iitb.ac.in (vayu.aero.iitb.ac.in [10.101.1.1])
 by vayu.aero.iitb.ac.in (Postfix) with ESMTP id 0EEE684310111;
 Fri,  7 Jun 2019 12:01:10 +0530 (IST)
Date: Fri, 7 Jun 2019 12:01:09 +0530 (IST)
From: Martins Henry <rws@aero.iitb.ac.in>
Message-ID: <412557711.60336.1559889069980.JavaMail.zimbra@aero.iitb.ac.in>
Subject: Thanks and I wait for your answer
MIME-Version: 1.0
X-Originating-IP: [10.101.1.5]
X-Mailer: Zimbra 8.8.12_GA_3803 (ZimbraWebClient - FF11 (Win)/8.8.12_GA_3794)
Thread-Index: SsslhYkcLNFU69da/wYft5cO9/ZYnA==
Thread-Topic: Thanks and I wait for your answer
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_005536_960713_7154FDB7 
X-CRM114-Status: UNSURE (  -4.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.2 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 1.2 MISSING_HEADERS        Missing To: header
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hello,

I am Martin Henry, An American Citizen; I am the personal secretary to
Mr. Donald Railton, the controller of a Lottery Company. Please I am
having big problem now, I have a 6yrs old daughter who has leukemia, a
disease of the blood, and she needs a bone marrow transplant or she
will die.

Please I am only asking for your help and you will benefit from it
also. As an insider with Lottery Firm, working as the personal
secretary to the controller, I want you to send me your name to play,
I have some numbers that are going to win, stored in his secret data
system in the office. The Lottery is an online entry with credit card
anywhere with a name and address. All I want you to do is to send your
name to play it and I will send confirmation to you.

I will play with my card on your name and the Prize will be shared
equally between us. Immediately the results are released they will
contact you for payment as the oversea winner. The lotto can be played
with 9.00 dollars, or 50 dollars but the prize will be Millions.
Remember that I am playing on your name with my card; I just want to
front you for this, because I need this money to save the life of my
little daughter.

Thanks and I wait for your answer
Martin Henry.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
