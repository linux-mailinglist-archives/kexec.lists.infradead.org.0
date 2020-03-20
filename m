Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0861918CC4B
	for <lists+kexec@lfdr.de>; Fri, 20 Mar 2020 12:08:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=b4H5TBpNJmObb97KoGefw+u/+imgh1qg/clgPrL2hrw=; b=B6V
	6Lf96QIDorMEsbf/e2hug1uSCQAqb0s0VIPG7e6OY1gjjuUm7mA55mPKMvzjh2mwtUi0+pMbJirZ6
	qrLYiRjFmMaAHyMfrZks0xtEOeiC8DM9wJxjNSlBC2mquf2ojd/P2KVPivlPibYrRMl7cuVuhjhsx
	a+cFXtL+DyHm7lLF3CN6ZEXTdcC+o6QfVRz86bPPptJqkeD81YNDe3Qgg/RkkqQGMbjOgtxcxyDYB
	QmfPwZUL6bQr4V+LRsvypOm/8EzFF+9FaYoX3LuUQ241Hg/+CPdTCz4wXBmqWO0kbMsK0C+u6i9SE
	/sOhAD3FLLIV7YdpJBiUKC7IehOz8bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFFVr-0007Bm-Fg; Fri, 20 Mar 2020 11:08:27 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFFVn-0007As-S8
 for kexec@lists.infradead.org; Fri, 20 Mar 2020 11:08:25 +0000
Received: by mail-oi1-x243.google.com with SMTP id k8so6087802oik.2
 for <kexec@lists.infradead.org>; Fri, 20 Mar 2020 04:08:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=kuhba0bbR9oJup1oQ7P5tNPZ9FqBHXE57QqcfHgaIHo=;
 b=A60SjmFBNa4d1kwHvRw4bc9lj2jiNyAhDuqhjWo3cgAebNQqUJEnh/RoZdx7hfzsrp
 4SWQhn688QXBqYnglKKuLTjif0JDt0fbCcv1RHUlno7cqw3eMo57hxRetkNV0RbvyU25
 M3Jm200pLL3/1wwAtQ85SI+8PfMjYJLVzBJYLK/vQaegR5eqdknK9K4xDkTLKTPKubnA
 jGBcsvwmCzHJiZPplG796lErwiPd5PyUKcHhVXfFsJFFRLfDf/MjQ1z0m6oXKEAnHYyc
 EWcmpEoSaUnQlmPVU7PKje3QuaxL3J4usaauhIJ+Oh0CZo7E+79qWEUCq+sR+oQvF80l
 qZkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=kuhba0bbR9oJup1oQ7P5tNPZ9FqBHXE57QqcfHgaIHo=;
 b=ZAsdTcKAqUMVFOmu1Y37naNaBs4Qmeowp7RQl6Ecs++pA7DcRS/VdkL2vUDkW0lvpq
 uV2pBWXbNFxjKHQUSuIXuk0MBBHhmmsMsImj8PWDKPbtJPt2jRCF9ST74D9GY3GDC/qZ
 wnt62AX03TsJiuA29C8lJt4xsxdET+aIBMMLq50M0oFTVQq16rCaNGIITg36a6CkcQ4R
 cWtBWnaMZly+5tqZH21/eNa7WQMMFGPg0iCBkC9erJ//rHP8ZjQdwybHWMEVNo+kFp+/
 bGlD+eI68SNjsuWesRgEvfz8s4VtbsQZGqLgqzIgOehCT4oeQ2aVaCeRNUnK6g35uVpj
 65dA==
X-Gm-Message-State: ANhLgQ1Sbc8L3A7Huieyb1RXjhWvkrJfrpr+qGMbq9UayY4ypw9r9T5q
 EFsmPbU0gmogaHP3VV0CJRlefyrvkESO9157NOI=
X-Google-Smtp-Source: ADFU+vt8k2nsikl8+F6zZy6KhM6oVL5vQUIBRP29fSYh+mzbePjgR8pd4xdQF9Q4z698VmxSff9iU79jql6v8FVByH8=
X-Received: by 2002:aca:4bc5:: with SMTP id y188mr6033676oia.9.1584702503363; 
 Fri, 20 Mar 2020 04:08:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4a:c897:0:0:0:0:0 with HTTP; Fri, 20 Mar 2020 04:08:22
 -0700 (PDT)
From: federa bureau of inteligence <federabureauofinteligence@gmail.com>
Date: Fri, 20 Mar 2020 11:08:22 +0000
Message-ID: <CAE9o6LCqCOnKQYMchcW8zWHww1Rv4p89mYY9EaPpi4XVZ-00Mg@mail.gmail.com>
Subject: HAPPY SURVIVAL OF CORONAVIRUS
To: undisclosed-recipients:;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_040823_911367_7F1718E2 
X-CRM114-Status: UNSURE (   0.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.0 (+++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (3.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [federabureauofinteligence[at]gmail.com]
 0.5 SUBJ_ALL_CAPS          Subject is all capitals
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.7 DEAR_SOMETHING         BODY: Contains 'Dear (something)'
 0.9 URG_BIZ                BODY: Contains urgent matter
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 LOTS_OF_MONEY          Huge... sums of money
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

Dear Sir,

HAPPY SURVIVAL OF CORONAVIRUS

We are reaching for a very interesting business transaction which we
feel will of great benefit.We the FBI unit in the western subregion of
Africa have a fund which we confiscated and lodge it in a bank

This fund is worth of $12.5 million dollars.We will need your
assistance to recieve this fund into your account for investment in
your country.

We will need your urgent response for details

Inspector Greg Adams,
For and on behalf of Cote D'Ivoire FBI
Tel 00225 6716 6756

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
