Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51E251A0616
	for <lists+kexec@lfdr.de>; Tue,  7 Apr 2020 07:10:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=5EJY1MCbN3FUsFYPBm70pw/gwF+qVMQcyvcR8G054vM=; b=JIu
	iLt5xvkhUbYuxHJQktqwpQexvIL2LbopAZRWMqtC+dJJIEPVsHQb+e29ZOXZ+GfUowAanAt1OlHW2
	7KgFcVcDKvhRX0qKVdqdGPPqKlBkJ9e9xAnE3fbSdgGgXfKp+9Y2snZ8y8QT+yzw817Zn8keNci4f
	pn7eQ0cqQmNuXFaWtL5C0kJnuxW5KXeFrLsrqTtp5Ou6OXzmLNZtza4njBGyEr2VQeI0bxRTQ8PsL
	taN8I6weuFA51ncMAo0l3oENcwH0nHH25q6Ct5SI9KXIcIWHryqf5dL5DzY/9sfabd2dVifWE0yaY
	7/4nvfTZCgfAwbK2SkPAm17/NhsAmdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLgVI-0000FE-PI; Tue, 07 Apr 2020 05:10:28 +0000
Received: from mail-vk1-xa44.google.com ([2607:f8b0:4864:20::a44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLgVF-0000Ee-BX
 for kexec@lists.infradead.org; Tue, 07 Apr 2020 05:10:26 +0000
Received: by mail-vk1-xa44.google.com with SMTP id p123so522147vkg.1
 for <kexec@lists.infradead.org>; Mon, 06 Apr 2020 22:10:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=38NlpNEbzNFWb7RFQtfvRASB+B576yw7dNc7pozf3pc=;
 b=C/++cDFQHiXv3kxSp0WVqjPEs//cPmsezKxY9cLy0oVz0MPZBEkqZ1YPL787XWVjtB
 P28Wu4BytGYtnXLfhq5W0QzKzSwefQsUseiW1245gdgQnihjw3EiAMrec6tn8puoCkcW
 h/xfFhN8HuBQmv9338/whna33JsX7Wc7Vyl0WjpBnisAJakNRPcMH8wLMy30fNnLuV/b
 XHznkKQtVwUpQ+nR2fv0E6zJnB0duhp628+CUPfMSvxbHgIOAKvUPzelg6u91fXd9bVx
 WqLApkDhHLEMLu6NNqgPsFmX2AF5c31MBNCMapdKWljqH1NjgNpTwOrK2DKr5bHBHTVg
 nt4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=38NlpNEbzNFWb7RFQtfvRASB+B576yw7dNc7pozf3pc=;
 b=nNZXaitwPkoaS7agwC0EvhG3t/j8gVxBsLcRbLBqZcBqKIZHx3pf2mjY3vgm78BleZ
 67CyMFrqjMzwh4gQ+AxDeQnKr8OnPcMsAkZoeSlcvYF/zSLkT1mEuiyOQGHS+IVPBM/c
 cOMcCsE6c8rxpObegXeHO1Z2S7Fx6MKkP3iNQRZF7sHBZiTpQZpTUV/EO2cmsfpEHNgJ
 wObDTVn+z4ttCnHrPvEUyvZWxQO+fpJ9moNAnn9QsiAeEH37BKA4cW4x4hUOgG4Xmrnl
 RJZrprRkb29g1Kb4h0dZS8VbqivCvl0e71pPCoud4leZ5Hi92cdO66OEA3Vhm7H3g5Bw
 japg==
X-Gm-Message-State: AGi0PualkXFMVDMvxf5EQ0aZ6mVuNqKvC6sgYD3SNZwAwwDMhNgjxNL2
 6JXgLgY7huudZEBR10prL5F0jECD1LVDSu9ss4I=
X-Google-Smtp-Source: APiQypJu5h6MB4G6wv65BzU0id0QjbnMrXMTUGbYkU7pC7QZW4QdRDBEdna3MNAz6E8p7xOeuAY21J/wZH5lD6RmT2w=
X-Received: by 2002:a1f:9148:: with SMTP id t69mr195079vkd.83.1586236223455;
 Mon, 06 Apr 2020 22:10:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab0:4929:0:0:0:0:0 with HTTP;
 Mon, 6 Apr 2020 22:10:22 -0700 (PDT)
From: SANDRA DEWI <dewisandra154@gmail.com>
Date: Tue, 7 Apr 2020 05:10:22 +0000
Message-ID: <CABRVPWyGvNCN0LYptG2iubN9H=5-q0tBFHwXF3pKPiOaC1GVRA@mail.gmail.com>
Subject: whether this is your correct email address or not
To: undisclosed-recipients:;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_221025_423385_B868523C 
X-CRM114-Status: UNSURE (  -1.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a44 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [dewisandra154[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dewisandra154[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 LOTS_OF_MONEY          Huge... sums of money
 0.0 HK_SCAM                No description available.
 1.0 FREEMAIL_REPLY         From and body contain different freemails
 0.0 T_MONEY_PERCENT        X% of a lot of money for you
 0.0 ADVANCE_FEE_3_NEW_MONEY Advance Fee fraud and lots of money
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

Dear ,Pastor



I have a client who is an oil business man and he made a fixed deposit
of $26 million USD in my bank, where I am the director of the branch,
My client died with his entire family in Jordanian

50% of the fund will be for the church  for the work of God,the
balance 50% we share it in the ratio of 50/50. Meaning 50% to you and
50% for me

intervention in the Syrian Civil War 2014 leaving behind no next of
kin. I Propose to present you as next of kin to claim the funds, if
interested reply me for full details and how we are to



proceed to close this deal.




Mrs. Sandra Dewi



Email  mrsdewi@gmx.com

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
