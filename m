Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A292155FA8
	for <lists+kexec@lfdr.de>; Fri,  7 Feb 2020 21:37:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:MIME-Version:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tbqmND6CGYXfR5ssBlD7qXMmzHIJidPnc5owc4XjYUk=; b=SCZ3rF3Sxbcmvq
	AeU2sTJiAGzSxjHffXOFnRuF/x30jIYeJOeNSm1gdudtlklNJZ+JbTOwUTs2mx42lDqWtVzr9hQ4D
	lYBs/PshRnKNhB+yFWmlDsZwoKZQvaKrFubFEUYdfeR9uGsuTZz1AC1iZQ34n8SqabDXwcy4WREOw
	TxFc6ADjhwYOaT9Hm53YXzKNlZgjlHqtg8O2cMZCAkNoVYNq9YPQumhBJevAyWAiVfBEP9abzH/Xn
	eaZRy1PXK5gWHFB/62pRXulVntT4/Z+GWk8eZUI0rYPcpYM13Srb+s/cc3vHvMaTuuoioYNIPOcg5
	YcsABtmisWJt65iySnqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0ANl-000837-Ah; Fri, 07 Feb 2020 20:37:45 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0ANi-00082q-Fg
 for kexec@lists.infradead.org; Fri, 07 Feb 2020 20:37:43 +0000
Received: by mail-oi1-x242.google.com with SMTP id i1so3266021oie.8
 for <kexec@lists.infradead.org>; Fri, 07 Feb 2020 12:37:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=8cDRXBFOpE9J1p6S5H+HXSQg9q3m7pUJ3iUuQ5MPcDc=;
 b=FErTZTAVQXi/ldBSL1zAtuEdomaT123QMnQlpqBO2pn+XtZcoh9qxQhq3S4KCqXUVb
 phxG0Yr5RHP0O/fLD6Wl1yK/ZdLyeHQpPOqpffSF62LdfRidMWt8g2uY51f2/TJEcEgd
 8EQfT1mR1OMBIiJAaJjIr0JzYow/dOC3tNFpipHnd4MnP0L0mzR1e8HophWae0IGAqDx
 DdHDNzhVmJwRWwiPNutOcCQHrvrsQIwhcQyMjV3u5p40rGRsWy8qtCjyVSl45fafC8aZ
 c0VlAcYNRpp6hgeCfWVHNnuOSUFQbICxdlpv6GCL+dVx6/yLt8wpQHyWBQyGqF1Zk77L
 8Msg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=8cDRXBFOpE9J1p6S5H+HXSQg9q3m7pUJ3iUuQ5MPcDc=;
 b=tHso5Bvgi+A1hgbrTuTR2JyHLYxhRlRiRoBJ125ubzD7VQXTU9p+7bopvkZ7KedORV
 uLgtY0QhwnPNbiV5LKtAINVq+eNj4tJ7lEi+DWi2nqSJTo5AoTWG91nXKEch/c7tn4n1
 +vvY1iThhcesB4P1zqUpvCeZ1Vjweh0uoOKs7MxddsN5Sxd/piNIPCDlMMpVVDoGQJkq
 4jOY0NKeTV8gHgbIhf54/TaSRaLZErc1Sw5M4gCAA+y1HRKI8ljV2ODG/F0l7CZrAq/w
 nwsLU+mKP4WemA83HOy5fUT2W+zNQk1C+75f/OEe+qZ4WWMjEwqbk9JbyEXtn/gp80wI
 GAOA==
X-Gm-Message-State: APjAAAWG2I/rzxVHL/4VLV4sEJEE6LjFJehz+5XtsIrItUkyxX+OJGze
 mYz3eHLdW0J79StHOozYYdkL5T1NY78DCR+nYKA=
X-Google-Smtp-Source: APXvYqzMFQVUcz6RwIAdtQLxPzqwXGFqAunDRRJbjNNiM4opKycCdWXhvtKPsT78P6wT7l5ILe1ic9Rbze05h5pJwZ0=
X-Received: by 2002:aca:4d06:: with SMTP id a6mr3368360oib.27.1581107861179;
 Fri, 07 Feb 2020 12:37:41 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a4a:d508:0:0:0:0:0 with HTTP;
 Fri, 7 Feb 2020 12:37:40 -0800 (PST)
From: "Mr. Theophilus Odadudu" <cristinamedina0010@gmail.com>
Date: Fri, 7 Feb 2020 15:37:40 -0500
Message-ID: <CAPNvSTiQCz4Q0OvHzfTF7qRZgWPqpXcmi8OMyQAxxd=QWTK_ug@mail.gmail.com>
Subject: LETTER OF INQUIRY
To: undisclosed-recipients:;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_123742_526278_0A3FADC2 
X-CRM114-Status: UNSURE (  -3.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.8 (+++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (3.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.5 SUBJ_ALL_CAPS          Subject is all capitals
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cristinamedina0010[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [cristinamedina0010[at]gmail.com]
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit [auch197722[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 T_HK_NAME_FM_MR_MRS    No description available.
 2.0 HK_SCAM                No description available.
 1.0 FREEMAIL_REPLYTO       Reply-To/From or Reply-To/body contain
 different freemails
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
 information
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
Reply-To: auch197722@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Good Day,

I work as a clerk in a Bank here in Nigeria, I have a very
confidential Business Proposition for you. There is a said amount of
money floating in the bank unclaimed, belonging to the bank Foreign
customer who die with his family in the Ethiopian Airline crash of
March 11, 2019.

I seek your good collaboration to move the fund for our benefit. we
have agreed that 40% be yours once you help claim.

Do get back to with 1) Your Full Name: (2) Residential Address: (3)
Phone, Mobile  (4) Scan Copy of Your ID. to apply for claims of the
funds.

Regards
Theophilus Odadudu

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
