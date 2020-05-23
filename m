Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FE221DF4F5
	for <lists+kexec@lfdr.de>; Sat, 23 May 2020 07:22:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:MIME-Version:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HWFhKgIEodjro9dhOnaeMBfknZQWOCMfWok5noAOFbA=; b=lmvLKHqQxdjt09
	jEv3LP6YUU4fQGjYEyBYQoexRvZ4xLmupFq5tEV719wp5+r8ABZAx1qf+lu5rq1aEt7bYXQzWHglZ
	F5UrTaxzeq6D1btMCEWG8bXyHfVkng6Z7TWFLbyUIEJwnsEtLNSDeooKsZ7qGLULhXmgKSC9AB3nA
	xmPO/PlL1nXsIXqGAFBxsUNpcenM1maMvJhiRPax2MmIGt4icNWfzrMnOfcz1GslHmDe9WMzKTrBm
	1PWYqH1TfNCUT3/jOPPlPv+4jGZw+6dhEM2wbj880Oy1XYJQpz8F6Z9jb2PBbbtDshkKYLhjqA8I7
	n5fwQ4ziKTxZrFNPGaZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcMcR-0000Um-Lr; Sat, 23 May 2020 05:22:47 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcMcO-0000UD-UX
 for kexec@lists.infradead.org; Sat, 23 May 2020 05:22:46 +0000
Received: by mail-io1-xd42.google.com with SMTP id q8so12410046iow.7
 for <kexec@lists.infradead.org>; Fri, 22 May 2020 22:22:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=F3NMDrR9dummcUXdRfruEEfbIS6yB2vx68nB8Asq/5Q=;
 b=J4tGp883fH57xBxttpSUVaUJF38djQ87BRLG4maH3y8GxAURDxxCzoujC3sZ2h417j
 mNx76cZyYPwBztNMcdMBlXHj4au6Im62lL9ybULFpc33vtpJ9gDxBFhDAIQoLWn1luN9
 zEO3QbFsTN3/2BZElaPK0NiNjatktzvYYgAV+t86icxEa1V4O/GQ8hT3RX1KltogYksC
 8iM2+F/OIEa+JeA4GQtr4i/GhI9IVwZrFPlcdh3Nt8hN9dCmqw9mvrwLKIoEHnr+lNXf
 YKg7FDB4h8pNfs3np4DjeEcPXIuLbXMWhnF0JpeNHv+cg51XfB265vTNo7//+G4qH4ki
 XvoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=F3NMDrR9dummcUXdRfruEEfbIS6yB2vx68nB8Asq/5Q=;
 b=pXbchC9a4wbRPqk9LmSUf3G86m0g+yoBboO8wDeM/gkcrOLd8FUTsVrFGLoYvsD1Ct
 nI3Uq+SySZkGtEBvYiHzWDxsUi7z9aJzIWysrLU9og3MY27sazzpYUKKwH6GSXfwdwVF
 1zfkzHKkCFk6eklzI6uhT+rIxvTX56vmVBrkZFBhvGh7C6TSgUQgLpoDuxqYDyzLhe6u
 AUtPNCLXtOUx9vuoS/PK+uwE3Dpa2qhiBTzBwKWNDTqRxB800SwrgWxK1D7kHuLGsoQD
 ff1z+5a2B/WV85WtDenU9IUWDtArbaSSmtKOzcZI4YURZcJqchQj90wvABJUSZ+vPDQ1
 BSqA==
X-Gm-Message-State: AOAM533MkhaCTrzJ5YeHMWqMTpJrB4tXl7LvtnK3+9zcC6rq6mpIC9Ee
 5nzPDUxN40PtXtpjdQj5XFOVzPpr8ikAWK+MHc8=
X-Google-Smtp-Source: ABdhPJwy2dpFwxXzOJ//aNIPzAjKE8YS9NnmOGiu8usG3uhUS6Ehl1RPmjJ817A5ii9pkt60GlcrhP0esioPrHW9BMQ=
X-Received: by 2002:a6b:cac5:: with SMTP id a188mr5857363iog.145.1590211363365; 
 Fri, 22 May 2020 22:22:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a92:3608:0:0:0:0:0 with HTTP; Fri, 22 May 2020 22:22:42
 -0700 (PDT)
From: "mrs.chantal" <mrs.mariaj1@gmail.com>
Date: Sat, 23 May 2020 05:22:42 +0000
Message-ID: <CAKHDNBmRkaY4WXMhs5DHa-Q4-Vvsz8Kebi4jcPHkj4By=0Z7TQ@mail.gmail.com>
Subject: ok.Compliment
To: undisclosed-recipients:;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_222244_986495_6666322B 
X-CRM114-Status: UNSURE (  -2.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mrs.mariaj1[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [mrs.mariaj1[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit [mrs.chantala2055[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 LOTS_OF_MONEY          Huge... sums of money
 0.0 T_HK_NAME_FM_MR_MRS    No description available.
 1.0 FREEMAIL_REPLYTO       Reply-To/From or Reply-To/body contain
 different freemails
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
 information
 0.0 MONEY_FORM_SHORT       Lots of money if you fill out a short form
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
Reply-To: mrs.chantala2055@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

     Compliment of the day to you. I am Mrs.CHANTAL I am sending this brief
    letter to solicit your partnership to transfer $13.5 Million US
    Dollars.I shall send you more information and procedures when I receive
    positive response From you. Please send me a message in My private
    email address is ( mrschantal066@gmail.com  )
    Best Regards
    MrS.Chantal

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
