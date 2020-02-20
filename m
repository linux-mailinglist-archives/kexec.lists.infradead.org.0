Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5EB2165B38
	for <lists+kexec@lfdr.de>; Thu, 20 Feb 2020 11:11:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:MIME-Version:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hAAEvTNkIb5/ygv0kOB8k+2wDXkJVwOrnZTrURRrnIs=; b=eGaBcxODIvoUMH
	yxTm7GVH82b+wj9IwHhfZQLJ1d7w9b24H5SX3j0PP8nSEWEOjQ5IEXo8+AXfpDYNZIiQs/iowo6pE
	MW9EK3iJu4KJZQO9UAQSs2OhAlL3JnIww7G4IO2qj6lOuknhTlgIpyNhPcJZlri+q2VP0r75WOsGX
	AK2wikKjCg3oazbF2nG9u57+16DVW3nNMDsBbhg5EGln8DEqQuuL6j/x91N9CIutSQQyzhWGW2T8t
	QyjBpicp/Owa1zCINFjPUcKClNqngLavbIqCRcAfKRQqc6IvN9bhKJ+G96jHSudY4q2WFx2ZYlg0A
	JWS2n/rYhSGu5BWFFFeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4io5-0008HU-1r; Thu, 20 Feb 2020 10:11:45 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4iny-0008GN-Le
 for kexec@lists.infradead.org; Thu, 20 Feb 2020 10:11:39 +0000
Received: by mail-pg1-x542.google.com with SMTP id j4so1712093pgi.1
 for <kexec@lists.infradead.org>; Thu, 20 Feb 2020 02:11:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=xsUbPWAhYtsZRE8nHbpZ90/dMr+6ACJOvf/o3gzcGwM=;
 b=PJCKAi8I41I+5Tb4Mnflsd2jQsw3U4EsBKdHiq4ekjydb9zjbl/xBpYM6a8vjGrE+W
 bq9MwZiaMiUj0KV0zpatU51OPnhvMCCSqw888gpP5zovCU/409yjTgfOgUg5PB8q2K3E
 AHTdthzn31VEJcGx7Z1tBUpIJcKiH12kEnHjHYt7G/oqoP++Fptu78jpxqkic0773bQd
 ZayVUruIfEjkelzoyKRCI3KHlz6Z/Dnw7ydFm76qzLLquytCz1iwfwxFLraFMHZVSvsv
 yQuWTO5xdfcNjv2B3P6bJDVCP8BJhXXiQQ9Tuh0WlvdeGaPVI6+IBe1h84RdzkS9fKDa
 U9fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=xsUbPWAhYtsZRE8nHbpZ90/dMr+6ACJOvf/o3gzcGwM=;
 b=Z/cFrJ0lDCmfsitB2daThsDD0lK+wu6xxABnxpxxpl/3Wh9Cxww6rBT8OxYFByUv8W
 AGY+crjuFj/UQ4x4lFlMLh6Il8d2DFhvdracvAgrozQM9l/S5gq8YVqxBc/PwS9jxKTI
 h6lPzGsNrdRWM+7n24FpZZeXucz8Shu695DN4DhCRgf/eWRrdjJA4pVkCokzfYcc4t4l
 QtKBMbBdyliDpGPWHCIzMlOdlHJytiSluNkt56ARrrjQi4/72iRysqWfn0Xt31u+S4F8
 uOGwbfwpBXjaaZzln4kqWQIg2BbwppRImOjT+U/Eu4Q96Y0Jm+MfvZ/fUMYyWsqdpal2
 gs/g==
X-Gm-Message-State: APjAAAUL18LAfESsGe+6T+c8BfpEOj8hZa9yQooW9g30mIQP37PoVfwu
 mEX2XcZwJBNwLF3+E7Yhubc5rJM8YwMeVFV3GoY=
X-Google-Smtp-Source: APXvYqxHE+Jpv7TnlDVGcX3UL6Uyz2XLxptGN1jGFOlv4qxAJR9PZ93vxohGaYe++PJvLL2K5NjMeaR+jKpZPkDFcUI=
X-Received: by 2002:a63:5220:: with SMTP id g32mr31926103pgb.116.1582193493229; 
 Thu, 20 Feb 2020 02:11:33 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a17:90a:90f:0:0:0:0 with HTTP; Thu, 20 Feb 2020 02:11:32
 -0800 (PST)
From: "Mrs. Susan S. Cage" <drgoodluckebelejonathan061@gmail.com>
Date: Thu, 20 Feb 2020 02:11:32 -0800
Message-ID: <CALjo5=877S8-Ry+A=9FH6dxjXo5H81+Sa3p18iiZLBS7eO_8bA@mail.gmail.com>
Subject: Attention:Beneficiary
To: undisclosed-recipients:;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_021138_713073_79388AC7 
X-CRM114-Status: UNSURE (  -4.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.3 (+++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (3.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [drgoodluckebelejonathan061[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit [cagesusan199[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [drgoodluckebelejonathan061[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 DEAR_BENEFICIARY       BODY: Dear Beneficiary:
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 LOTS_OF_MONEY          Huge... sums of money
 2.0 HK_SCAM                No description available.
 0.0 T_HK_NAME_FM_MR_MRS    No description available.
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
Reply-To: cagesusan199@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

-- 
Dearest Friend,

Sorry for invading your privacy, my name is Susan S. Cage I am 81
years, citizen of United States and presently in hospital undergoing
chromatography for bronchogenic carcinomas (Lung cancer) which
affected both Lungs. The doctors said I have few days to live because
the cancer has now affected my brain.

My late husband left Fifteen Million, Five Hundred British Pounds
Sterling in my account, I want to transfer the money to you and I want
you to use it as a donate for charitable and help the needy,
motherless, less privileged and widows within your location.

I need your assurance that you will use the fund for charity, once I a
favorable reply from you, will inform my Bank through my lawyer to
transfer the fund to you as my Next of Kin and Sole Beneficiary. Once
I receive your response, I will inform my bank in writing through my
lawyer.



Thank you and God bless you.

Mrs. Susan S. Cage

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
