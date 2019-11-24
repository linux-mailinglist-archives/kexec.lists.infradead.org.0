Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3F62108369
	for <lists+kexec@lfdr.de>; Sun, 24 Nov 2019 14:28:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:MIME-Version:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NNN7PpVhXvB3i6DRQibppXCQkd1es35zhoajw66tdgQ=; b=GfXzdB/8sa11e+
	lNircE39dNf1okAFHwoTan6MwQ83CsBzchHV1VVlNHE1JYtgiQdVPgNtl0nGlZzsAe2i8OgCymKjk
	YbCtzbdNlF3QGr7i0+Nn3RD6dwA/fiYorN6pID6NmAOoZSjtpPI0/V29gRYVXnLuZW5wAESsmWi+P
	6TAwGEUZTuqgdBe0EzfrcfPlAFAbB6KMdBaQNHBgKBQt7GP1DtyA4MNt8/JC6YYsk8bcrzMrVZLg9
	H8svznG+JuyEwUOxJSf0tstz5vP6wUlLyb7xK1R1p9JDo01xgCYyHGgea1yQjplVl+cPW43Y4/fiA
	C2PRtglZZliIDOKn7Cyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYrvu-0007q6-Sk; Sun, 24 Nov 2019 13:28:10 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYrvo-0007p2-AE
 for kexec@lists.infradead.org; Sun, 24 Nov 2019 13:28:05 +0000
Received: by mail-io1-xd43.google.com with SMTP id z26so9628292iot.8
 for <kexec@lists.infradead.org>; Sun, 24 Nov 2019 05:28:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=pI7cV3FDgc1XH+A619u5I2fUvKpFMBjQiQlWPO2Scvc=;
 b=CP5MWEb8wTkytIxoBzD2Cqkn7PoDTmuWcmkHj6WSxWamzCYEL5otu1zRjmi2vXpJ81
 wKov3vp/sWGz+kU69gCuzPxThChoFIKb2Or4PI+ZojZl1Kyr+3e+jslKWJUjhqBq7o58
 0ihn1K8/1kVaqDg2HjsvaNT3OAFGgtZSd7eAJ1uIDudwxLhBqtepHTxs8ncrfJqq6c16
 v5amcg6aNEnkzQr5gqI14X236agUbNTIXRMP32WK4sEJ1tX3NYtmGzVnBHp3jtpzCDrG
 DKA/m/lZBtSRTCZBiz5lOE4QgeI4IK734LE5E9OpO2LqCXLkZLJzGdQ/vdFMjWgzcReK
 B4JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=pI7cV3FDgc1XH+A619u5I2fUvKpFMBjQiQlWPO2Scvc=;
 b=X4bC+68ECzvqGLCPS8Gz+y7JLiDZpWLUDv8RWU4C3dy3MdjTazRU5EU8vGSVUd4FJ2
 h0rVDt4DqV+/Tbq38EvyOfA7rlii2XHnsOcRvJMC0PvzB3SgvTU4MSPp1ke9OUNg01Wm
 2v8ma5kIDovfZJyPUqBYeD1Nu9Xz5/QWMdRrEU52OhBr1I0XcFvTecNxOB1yADHcnOdt
 MsHPNGjQUa1BRHxh6IUfgBlqhUZJ6lTUwdnDJ+0GXTRMEKmIY0KeQ9HHfaEZnbAbtfTV
 vKy2vpau5CWPES0DUQ9ueaUUn9FLz6k6h675mxhKBVDD5NZgGvZ0dPNTEru+bF4Usu09
 dWZw==
X-Gm-Message-State: APjAAAXjha4jdmPnkRtcyS5YgiNO7GtbN066iyQBpdAeHmxCjB5oW6Mi
 OtExqFfo/3lXVDmRbSB84cLFrRJ5aUGmQLFM+1M=
X-Google-Smtp-Source: APXvYqxkTyiQaVvpbb24ntNydlvnpE5eKjF8wnNR1rm1uOXUOcrYnJ1zw33MXJoQabHBSTsdn7fkGs/BVoVfGemyoOU=
X-Received: by 2002:a02:9047:: with SMTP id y7mr23057257jaf.13.1574602083048; 
 Sun, 24 Nov 2019 05:28:03 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a4f:4fd0:0:0:0:0:0 with HTTP; Sun, 24 Nov 2019 05:28:02
 -0800 (PST)
From: "Mr. Joon-Kyu Lin" <johnpfox60@gmail.com>
Date: Sun, 24 Nov 2019 05:28:02 -0800
Message-ID: <CAHLmmYMfUhtA9ktHbRfePyRD2j0yBArOW=ZhsrS_vTfqhPovgw@mail.gmail.com>
Subject: Venture Capital & Private Investors
To: undisclosed-recipients:;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191124_052804_357267_4FC33BD8 
X-CRM114-Status: UNSURE (   0.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (johnpfox60[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (johnpfox60[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 T_HK_NAME_FM_MR_MRS    No description available.
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
Reply-To: afginvestmentbrokers@al-faisaliah.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Attention:

I am an investor that can provide funding for any viable business idea or
venture.

Please do let me know if you have fund management abilities, credible
projects in need of funding or advanced stage projects requiring Bank
Guarantees, Loans or Partnership, Joint Venture, Equity, we would be
delighted to work with you.


Best Regards,
Mr. Joon-Kyu Lim
Al Faisaliah Group (AFG)
Venture Capital & Private Investors

--
*This email and any attachments are intended for the named recipients only
and contain confidential materials. Any unauthorized copying, reviewing,
dissemination or other use by anyone other than the named recipients of
this communication is strictly prohibited. If you received this email in
error and/or are not a named recipient, please notify the sender (Al
Faisaliah Group) and delete all copies of this email. Thank you.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
