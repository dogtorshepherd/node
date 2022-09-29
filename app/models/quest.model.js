const sql = require("./db.js");

// constructor
const Quest = function(quest) {
  this.quest_id = quest.quest_id;
  this.firstname = quest.firstname;
  this.lastname = quest.lastname;
  this.role = quest.role;
  this.questname = quest.questname;
  this.password = quest.password;
};

Quest.create = (newQuest, result) => {
  sql.query("INSERT INTO quest SET ?", newQuest, (err, res) => {
    if (err) {
      console.log("error: ", err);
      result(err, null);
      return;
    }

    console.log("created quest: ", { quest_id: res.insertId, ...newQuest });
    result(null, { quest_id: res.insertId, ...newQuest });
  });
};

Quest.findById = (quest_id, result) => {
  sql.query(`SELECT * FROM quest WHERE quest_id = ${quest_id}`, (err, res) => {
    if (err) {
      console.log("error: ", err);
      result(err, null);
      return;
    }

    if (res.length) {
      console.log("found quest: ", res[0]);
      result(null, res[0]);
      return;
    }

    // not found Quest with the quest_id
    result({ kind: "not_found" }, null);
  });
};

Quest.getAll = (role, result) => {
  let query = "SELECT * FROM quest";

  if (role) {
    query += ` WHERE role LIKE '%${role}%'`;
  }

  sql.query(query, (err, res) => {
    if (err) {
      console.log("error: ", err);
      result(null, err);
      return;
    }

    console.log("quest: ", res);
    result(null, res);
  });
};

// Quest.getAllPublished = result => {
//   sql.query("SELECT * FROM quest WHERE published=true", (err, res) => {
//     if (err) {
//       console.log("error: ", err);
//       result(null, err);
//       return;
//     }

//     console.log("quest: ", res);
//     result(null, res);
//   });
// };

Quest.updateById = (quest_id, quest, result) => {
  sql.query(
    "UPDATE quest SET firstname = ?, lastname = ?, role = ?, questname = ?, password = ? WHERE quest_id = ?",
    [quest.firstname, quest.lastname, quest.role, quest.questname, quest.password, quest_id],
    (err, res) => {
      if (err) {
        console.log("error: ", err);
        result(null, err);
        return;
      }

      if (res.affectedRows == 0) {
        // not found Quest with the quest_id
        result({ kind: "not_found" }, null);
        return;
      }

      console.log("updated quest: ", { quest_id: quest_id, ...quest });
      result(null, { quest_id: quest_id, ...quest });
    }
  );
};

Quest.remove = (quest_id, result) => {
  sql.query("DELETE FROM quest WHERE quest_id = ?", quest_id, (err, res) => {
    if (err) {
      console.log("error: ", err);
      result(null, err);
      return;
    }

    if (res.affectedRows == 0) {
      // not found Quest with the quest_id
      result({ kind: "not_found" }, null);
      return;
    }

    console.log("deleted quest with quest_id: ", quest_id);
    result(null, res);
  });
};

// Quest.removeAll = result => {
//   sql.query("DELETE FROM quest", (err, res) => {
//     if (err) {
//       console.log("error: ", err);
//       result(null, err);
//       return;
//     }

//     console.log(`deleted ${res.affectedRows} quest`);
//     result(null, res);
//   });
// };

module.equestports = Quest;
